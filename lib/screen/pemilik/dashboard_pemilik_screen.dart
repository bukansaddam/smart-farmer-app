import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/kandang.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/widgets/card_dashboard.dart';

class DashboardPemilikScreen extends StatefulWidget {
  const DashboardPemilikScreen({super.key});

  @override
  State<DashboardPemilikScreen> createState() => _DashboardPemilikScreenState();
}

class _DashboardPemilikScreenState extends State<DashboardPemilikScreen> {
  Kandang? _selectedKandang;

  late KandangProvider kandangProvider;

  @override
  void initState() {
    super.initState();

    kandangProvider = context.read<KandangProvider>();

    Future.microtask(() {
      kandangProvider.refreshKandang().then(
        (value) {
          if (kandangProvider.kandangResponse != null) {
            setState(() {
              _selectedKandang =
                  kandangProvider.kandangResponse!.result.data.first;
            });
          } else {
            _selectedKandang = null;
          }
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<KandangProvider>(
        builder: (context, kandangProvider, child) {
          return _buildBody(kandangProvider);
        },
      ),
    );
  }

  Widget _buildBody(KandangProvider kandangProvider) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Lokasi',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          _buildLocation(kandangProvider),
          const SizedBox(height: 16),
          const Text(
            'Data Kandang',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          CardDashboard(
            onTap: () {},
            title: 'Kematian Ayam',
            totalData: '118',
            icon: 'chicken-dead.svg',
            iconColor: const Color(0xFFDEB7B7),
            textColor: const Color(0xFFC07171),
            right: -10,
            bottom: -5,
          ),
          const SizedBox(height: 16),
          CardDashboard(
            onTap: () {},
            title: 'Hasil Panen Telur',
            totalData: '118',
            icon: 'egg.svg',
            iconColor: const Color(0xFFEFE385),
            textColor: const Color(0xFFDFC60B),
          ),
          const SizedBox(height: 16),
          CardDashboard(
            onTap: () {},
            title: 'Hasil Panen Ayam Pedaging',
            totalData: '118',
            icon: 'chicken-meat.svg',
            iconColor: const Color(0xFFE6B883),
            textColor: const Color(0xFFCD7107),
            right: -5,
            bottom: -17,
          ),
        ],
      ),
    );
  }

  InkWell _buildLocation(KandangProvider kandangProvider) {
    return InkWell(
      onTap: () => _buildBottomSheet(context, kandangProvider),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF7A8E70),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Alamat',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16)),
                const SizedBox(height: 4),
                Text(
                  '${_selectedKandang?.nama ?? ''}, ${_selectedKandang?.lokasi ?? ''}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color(0xFF4E6B3E),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> _buildBottomSheet(
      BuildContext context, KandangProvider kandangProvider) {
    final state = kandangProvider.loadingState;
    return showModalBottomSheet<void>(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 16),
                child: Row(
                  children: [
                    const Expanded(
                      child: Center(
                        child: Text(
                          'Pilih Kandang',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(Icons.close, size: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: state.when(
                    initial: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loaded: () => ListView.builder(
                      itemCount: kandangProvider.listKandang.length,
                      itemBuilder: (context, index) {
                        final kandang = kandangProvider.listKandang[index];
                        bool isSame = _selectedKandang == kandang;
                        return _buildItemKandang(
                            kandang, kandangProvider, isSame);
                      },
                    ),
                    error: (error) => Center(child: Text(error)),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildItemKandang(
    Kandang kandang,
    KandangProvider kandangProvider,
    bool isSame,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedKandang = kandang;
        });
        context.pop();
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSame ? const Color(0xFF7A8E70) : Colors.white,
          border: Border.all(
            color: const Color(0xFF4E6B3E),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              kandang.nama,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isSame ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: isSame ? Colors.white : Colors.black,
                ),
                const SizedBox(width: 4),
                Text(
                  kandang.lokasi,
                  style: TextStyle(
                    color: isSame ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
