import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_petugas.dart';
import 'package:smart_farmer_app/model/kandang.dart';
import 'package:smart_farmer_app/provider/detail_petugas_provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class DetailPetugasScreen extends StatefulWidget {
  const DetailPetugasScreen({super.key, required this.idPetugas});

  final String idPetugas;

  @override
  State<DetailPetugasScreen> createState() => _DetailPetugasScreenState();
}

class _DetailPetugasScreenState extends State<DetailPetugasScreen> {
  KandangProvider? kandangProvider;

  List<String> listDropdown = [
    'Belum ditentukan',
  ];

  Kandang? _selectedKandang;

  @override
  void initState() {
    super.initState();

    kandangProvider = Provider.of<KandangProvider>(context, listen: false);

    Future.microtask(() async {
      kandangProvider!.getAllKandang().then((_) {
        if (kandangProvider!.kandangResponse != null) {
          _selectedKandang =
              kandangProvider!.kandangResponse!.result.data.first;
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
                return _buildDetail(data, provider);
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

  Widget _buildDetail(DetailPetugas data, DetailPetugasProvider provider) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Informasi Petugas',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4E6B3E)),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nama Lengkap',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(data.nama),
            const SizedBox(height: 16),
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(data.email),
            const SizedBox(height: 16),
            const Text(
              'Nomor Telepon',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(data.noTelp),
            const SizedBox(height: 16),
            const Text(
              'Kandang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(data.lokasiKandang),
            const SizedBox(height: 16),
            const Text(
              'Ubah Lokasi Kandang',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color(0xFFE9ECF2),
              ),
              child: DropdownButton<Kandang>(
                isExpanded: true,
                value: _selectedKandang ??
                    kandangProvider!.kandangResponse!.result.data.first,
                underline: const SizedBox(),
                items: kandangProvider!.kandangResponse!.result.data
                    .map((kandang) => DropdownMenuItem(
                          value: kandang,
                          child: Text(kandang.lokasi),
                        ))
                    .toList(),
                onChanged: (Kandang? value) {
                  setState(() {
                    _selectedKandang = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 80),
            CustomButton(
                function: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Ubah Data'),
                        content: const Text(
                            'Apakah anda yakin ingin mengubah data ini?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                context.pop();
                              },
                              child: const Text('Batal')),
                          TextButton(
                              onPressed: () {
                                context.pop();
                                provider
                                    .updateLokasiPetugas(
                                        idPetugas: widget.idPetugas,
                                        idKandang: _selectedKandang!.id)
                                    .then(
                                  (_) {
                                    if (provider.uploadResponse!.success) {
                                      provider.getDetailPetugas(
                                          idPetugas: widget.idPetugas);
                                    }
                                  },
                                ).catchError((e) {
                                  ToastMessage.show(context, e.toString());
                                });
                              },
                              child: const Text('Ya')),
                        ],
                      );
                    },
                  );
                },
                text: 'Ubah')
          ],
        ),
      ),
    );
  }
}
