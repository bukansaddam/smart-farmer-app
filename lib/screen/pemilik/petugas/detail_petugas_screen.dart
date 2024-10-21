import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_petugas.dart';
import 'package:smart_farmer_app/provider/detail_petugas_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';

class DetailPetugasScreen extends StatefulWidget {
  const DetailPetugasScreen({super.key, required this.idPetugas});

  final String idPetugas;

  @override
  State<DetailPetugasScreen> createState() => _DetailPetugasScreenState();
}

class _DetailPetugasScreenState extends State<DetailPetugasScreen> {
  KandangProvider? kandangProvider;
  String _selectedValue = 'Belum ditentukan';

  List<String> listDropdown = [
    'Belum ditentukan',
  ];

  @override
  void initState() {
    super.initState();

    kandangProvider = Provider.of<KandangProvider>(context, listen: false);

    Future.microtask(() async {
      kandangProvider!.getAllKandang().then((_) {
        if (kandangProvider!.kandangResponse != null) {
          final data = kandangProvider!.kandangResponse!.result.data;
          for (var i = 0; i < data.length; i++) {
            listDropdown.add(data[i].lokasi);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Petugas'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return ChangeNotifierProvider<DetailPetugasProvider>(
      create: (context) => DetailPetugasProvider(
          apiService: ApiService(),
          authRepository: AuthRepository(),
          idPetugas: widget.idPetugas),
      builder: (context, child) {
        return Consumer<DetailPetugasProvider>(
          builder: (context, provider, child) {
            final state = provider.loadingState;
            return state.when(
              initial: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: () {
                final data = provider.detailPetugasResponse!.result;
                _selectedValue = data.lokasiKandang;
                return _buildDetail(data);
              },
              error: (e) {
                return Center(
                  child: Text(e),
                );
              },
            );
          },
        );
      },
    );
  }

  Widget _buildDetail(DetailPetugas data) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text('Nama'),
            subtitle: Text(data.nama),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Email'),
            subtitle: Text(data.email),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('No. Telepon'),
            subtitle: Text(data.noTelp),
          ),
          DropdownButton<String>(
              items: [
                for (var i = 0; i < listDropdown.length; i++)
                  DropdownMenuItem(
                    value: listDropdown[i],
                    child: Text(listDropdown[i]),
                  )
              ],
              onChanged: (value) {
                setState(() {
                  _selectedValue = value!;
                });
              },
              value: _selectedValue),
        ],
      ),
    );
  }
}
