import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/history_inventory.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';

class HistoryInventoryScreen extends StatefulWidget {
  const HistoryInventoryScreen(
      {super.key, required this.idKandang, required this.kategori});

  final String idKandang;
  final String kategori;

  @override
  State<HistoryInventoryScreen> createState() => _HistoryInventoryScreenState();
}

class _HistoryInventoryScreenState extends State<HistoryInventoryScreen> {
  InventoryProvider? inventoryProvider;

  @override
  void initState() {
    super.initState();

    inventoryProvider = context.read<InventoryProvider>();

    Future.microtask(() async {
      await inventoryProvider!.refreshHistoryInventory(
        idKandang: widget.idKandang,
        kategori: widget.kategori,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Inventory'),
      ),
      body: Consumer<InventoryProvider>(
        builder: (context, inventoryProvider, child) {
          final state = inventoryProvider.loadingStateHistory;
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: () {
              final data = inventoryProvider.historyInventoryResponse!.result;
              return _buildBody(data, inventoryProvider);
            },
            error: (message) => Center(
              child: Text(message),
            ),
          );
        },
      ),
    );
  }

  Widget _buildBody(
      HistoryInventoryResult data, InventoryProvider inventoryProvider) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final item = inventoryProvider.history[index];
        return ListTile(
          title: Text(item.namaItem,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.keterangan),
              const SizedBox(width: 8),
              Text(
                DateFormat('dd MMMM yyyy').format(item.createdAt),
              ),
            ],
          ),
        );
      },
      itemCount: inventoryProvider.history.length,
      separatorBuilder: (context, index) {
        return const Divider();
      },
    );
  }
}
