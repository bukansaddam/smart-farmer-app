import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/main/pemilik_main.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/widgets/search_bar.dart';

class KandangScreen extends StatefulWidget {
  const KandangScreen({super.key});

  @override
  State<KandangScreen> createState() => _KandangScreenState();
}

class _KandangScreenState extends State<KandangScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    final kandangProvider = context.read<KandangProvider>();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (kandangProvider.pageItems != null) {
          kandangProvider.getAllKandang();
        }
      }
    });

    Future.microtask(() async {
      kandangProvider.refreshKandang();
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
      context.read<KandangProvider>().refreshKandang(searchValue: query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<KandangProvider>().refreshKandang();
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
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: _buildList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildFAB(),
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
            'add_kandang',
          );
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildList() {
    return Consumer<KandangProvider>(
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
            return ListView.separated(
                itemBuilder: (context, index) {
                  final kandang = provider.listKandang[index];
                  return ListTile(
                    onTap: () {
                      context.goNamed('detail_kandang', extra: {
                        'idKandang': kandang.id,
                      });
                    },
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(kandang.nama),
                        Row(
                          children: [
                            const Icon(
                              Icons.ac_unit_outlined,
                              size: 20,
                            ),
                            Text(kandang.jumlahAyam.toString()),
                          ],
                        )
                      ],
                    ),
                    subtitle: Text(kandang.lokasi),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1,
                      color: Colors.grey,
                      indent: 16,
                      endIndent: 16,
                    ),
                itemCount: provider.listKandang.length);
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
