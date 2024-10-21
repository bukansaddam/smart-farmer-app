import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/petugas_provider.dart';
import 'package:smart_farmer_app/screen/widgets/search_bar.dart';

class PetugasScreen extends StatefulWidget {
  const PetugasScreen({super.key});

  @override
  State<PetugasScreen> createState() => _PetugasScreenState();
}

class _PetugasScreenState extends State<PetugasScreen> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    final petugasProvider = context.read<PetugasProvider>();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        if (petugasProvider.pageItems != null) {
          petugasProvider.getAllPetugas();
        }
      }
    });

    Future.microtask(() async {
      petugasProvider.refreshPetugas();
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
      context.read<PetugasProvider>().refreshPetugas(searchValue: query);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<PetugasProvider>().refreshPetugas();
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
    );
  }

  Widget _buildList() {
    return Consumer<PetugasProvider>(
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
                  final petugas = provider.listPetugas[index];
                  return ListTile(
                    onTap: () {
                      context.pushNamed('detail_petugas', extra: {
                        'idPetugas': petugas.id,
                      });
                    },
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(petugas.nama),
                        Row(
                          children: [
                            const Icon(
                              Icons.ac_unit_outlined,
                              size: 20,
                            ),
                            Text(petugas.lokasiKandang),
                          ],
                        )
                      ],
                    ),
                    subtitle: Text(petugas.noTelp),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 1,
                      color: Colors.grey,
                      indent: 16,
                      endIndent: 16,
                    ),
                itemCount: provider.listPetugas.length);
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
