import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/laporan_provider.dart';
import 'package:smart_farmer_app/screen/widgets/search_bar.dart';

class LaporanScreen extends StatefulWidget {
  const LaporanScreen({super.key});

  @override
  State<LaporanScreen> createState() => _LaporanScreenState();
}

class _LaporanScreenState extends State<LaporanScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  List<String> category = [
    'Semua',
    'Ayam Petelur',
    'Ayam Pedaging',
    'Kematian Ayam'
  ];

  String selectedCategory = '';
  String searchValue = '';

  @override
  void initState() {
    super.initState();
    final laporanProvider = context.read<LaporanProvider>();

    selectedCategory = category.first;

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (laporanProvider.pageItems != null) {
          laporanProvider.getAllLaporan();
        }
      }
    });

    Future.microtask(() async {
      laporanProvider.refreshLaporan();
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
      context
          .read<LaporanProvider>()
          .refreshLaporan(kandang: query, jenis: selectedCategory);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<LaporanProvider>().refreshLaporan();
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
                        setState(() {
                          searchValue = value!;
                        });
                        _onSearchChanged(value!);
                      },
                      hintText: 'Search inventory...',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
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
                          .read<LaporanProvider>()
                          .refreshLaporan(jenis: value, kandang: searchValue);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
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
    );
  }

  Widget _buildList() {
    return Consumer<LaporanProvider>(
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
                final kandang = provider.laporanResponse!.result.data[index];
                return ListTile(
                  onTap: () {
                    context.goNamed('detail_laporan', extra: {
                      'idLaporan': kandang.idLaporan,
                      'kategori': kandang.jenis,
                    });
                  },
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kandang.kandang,
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        DateFormat('dd MMM yyyy').format(kandang.tanggal),
                      ),
                    ],
                  ),
                  subtitle: Text(
                    kandang.jenis,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => const Divider(
                height: 1,
                color: Colors.grey,
                indent: 16,
                endIndent: 16,
              ),
              itemCount: provider.laporanResponse!.result.data.length,
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
