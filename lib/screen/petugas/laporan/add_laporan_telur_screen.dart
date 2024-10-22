import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/laporan_provider.dart';
import 'package:smart_farmer_app/screen/widgets/alert_dialog.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/text_field.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class AddLaporanTelurScreen extends StatefulWidget {
  const AddLaporanTelurScreen(
      {super.key, required this.extraId, required this.totalAyam});

  final String extraId;
  final String totalAyam;

  @override
  State<AddLaporanTelurScreen> createState() => _AddLaporanTelurScreenState();
}

class _AddLaporanTelurScreenState extends State<AddLaporanTelurScreen> {
  final _jumlahController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _jumlahController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Buat Laporan'),
            Text(
              'Hasil Panen Telur',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Jumlah Telur',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomTextField(
                    controller: _jumlahController,
                    hintText: 'Masukkan jumlah telur',
                    labelText: 'Jumlah Telur',
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      'dari ${widget.totalAyam} Ayam',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: context.watch<LaporanProvider>().loadingState.maybeWhen(
                loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                orElse: () => CustomButton(
                    function: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return MyAlertDialog(
                            title: 'Laporkan Panen Telur',
                            description:
                                'Apakah anda yakin ingin melaporkan panen telur ?',
                            msgAccept: 'Ya',
                            onAccept: () {
                              context.pop();
                              _onSubmit();
                            },
                            msgCancel: 'Batal',
                            onCancel: () {
                              context.pop();
                            },
                          );
                        },
                      );
                    },
                    text: 'Laporkan')),
          ),
        ],
      ),
    );
  }

  void _onSubmit() async {
    final provider = context.read<LaporanProvider>();

    final jumlahTelur = _jumlahController.text;

    if (jumlahTelur.isEmpty) {
      ToastMessage.show(context, 'Jumlah ayam tidak boleh kosong');
      return;
    }

    await provider
        .createLaporanTelur(
      idKandang: widget.extraId,
      jumlah: jumlahTelur,
    )
        .then((value) {
      if (provider.uploadResponse != null && mounted) {
        context.goNamed('home');
        ToastMessage.show(context, 'Laporan berhasil dibuat');
      }
    });
  }
}
