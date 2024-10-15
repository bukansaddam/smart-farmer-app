import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/kandang.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/widgets/search_bar.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({super.key, required this.category});

  final String category;

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;
  String idKandang = "e15e286c-aa40-474d-9baa-5f79912205e3";

  final actor = const String.fromEnvironment('actor', defaultValue: 'pemilik');

  bool get isOwner => actor == 'pemilik';
  bool get isEmployee => actor == 'petugas';

  List<String> category = ['Semua', 'Pedaging', 'Petelur'];

  String selectedCategory = '';

  Kandang? selectedKandang;

  @override
  void initState() {
    super.initState();
    final inventoryProvider = context.read<InventoryProvider>();
    final kandangProvider = context.read<KandangProvider>();

    selectedCategory = category.first;

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (inventoryProvider.pageItems != null) {
          inventoryProvider.getAllInventory(
              idKandang: idKandang,
              category: widget.category == 'Pakan'
                  ? selectedCategory
                  : widget.category);
        }
      }
    });

    Future.microtask(() async {
      inventoryProvider.refreshInventory(
          idKandang: idKandang,
          category:
              widget.category == 'Pakan' ? selectedCategory : widget.category);
      kandangProvider.refreshKandang().then(
        (value) {
          kandangProvider.setSelectedKandang();
        },
      );
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 1000), () {
      context.read<InventoryProvider>().refreshInventory(
            idKandang: idKandang,
            searchValue: query,
            category:
                widget.category == 'Pakan' ? selectedCategory : widget.category,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<InventoryProvider>().refreshInventory(
                idKandang: idKandang,
                category: widget.category == 'Pakan'
                    ? selectedCategory
                    : widget.category,
              );
        },
        child: SingleChildScrollView(
          controller: _scrollController,
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MySearchBar(
                      searchController: _searchController,
                      onChanged: (value) {
                        _onSearchChanged(value!);
                      },
                      hintText: 'Search inventory...',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      widget.category == 'Pakan'
                          ? Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFFF3F5F9),
                              ),
                              child: DropdownButton<String>(
                                value: selectedCategory.isNotEmpty
                                    ? selectedCategory
                                    : category.first,
                                underline: const SizedBox(),
                                items: category.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedCategory = value!;
                                  });
                                  context
                                      .read<InventoryProvider>()
                                      .refreshInventory(
                                        idKandang: idKandang,
                                        category: selectedCategory,
                                      );
                                },
                              ),
                            )
                          : const SizedBox(),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            color: Colors.green,
                            size: 20,
                          ),
                          Text(
                              context
                                      .watch<KandangProvider>()
                                      .selectedKandang
                                      ?.nama ??
                                  '',
                              style: const TextStyle(color: Colors.green)),
                        ],
                      ),
                    ],
                  )),
              const SizedBox(height: 8),
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: _buildList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: isOwner ? _buildFAB() : null,
    );
  }

  Widget _buildFAB() {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF4E6B3E),
      ),
      child: FloatingActionButton(
        onPressed: () {
          context.goNamed(
            'add_inventory',
            extra: {
              'idKandang': idKandang,
              'category': widget.category,
            },
          );
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildList() {
    return Consumer<InventoryProvider>(
      builder: (context, provider, _) {
        final state = provider.loadingState;
        return state.when(
          initial: () {
            return const SizedBox.shrink();
          },
          loading: () {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loaded: () {
            return GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final commodities = provider.inventories[index];
                return InkWell(
                  onTap: () {
                    // if (isOwner) {
                    //   context.goNamed('detail_inventory', pathParameters: {
                    //     'id': idKandang,
                    //     'inventoryId': commodities.id,
                    //   });
                    // } else {
                    //   context.goNamed('detail_inventory', pathParameters: {
                    //     'inventoryId': commodities.id,
                    //   }, extra: {
                    //     'id': idKandang,
                    //   });
                    // }
                    context.goNamed('detail_inventory', pathParameters: {
                      'id': commodities.id,
                    }, extra: {
                      'category': widget.category,
                      'idKandang': idKandang,
                    });
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Image.network(
                            commodities.images.first.url,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              commodities.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'stock : ${commodities.stock}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: provider.inventories.length,
            );
          },
          error: (e) {
            return Center(
              child: Text(e.toString()),
            );
          },
        );
      },
    );
  }
}
