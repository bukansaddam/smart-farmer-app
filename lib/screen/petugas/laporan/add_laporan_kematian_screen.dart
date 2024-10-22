import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/laporan_provider.dart';
import 'package:smart_farmer_app/screen/widgets/alert_dialog.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/text_field.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class AddLaporanKematianScreen extends StatefulWidget {
  const AddLaporanKematianScreen({super.key, required this.extraId});

  final String extraId;

  @override
  State<AddLaporanKematianScreen> createState() =>
      _AddLaporanKematianScreenState();
}

class _AddLaporanKematianScreenState extends State<AddLaporanKematianScreen> {
  final _jumlahController = TextEditingController();
  final _ciriCiriController = TextEditingController();

  final List<String> ciriCiriList = [
    "Tidak Ada Gerakan atau Respon",
    "Tubuh Kaku",
    "Tidak Ada Pernafasan",
    "Penurunan Suhu Tubuh",
    "Mata Tertutup atau Sayu",
  ];

  List<bool> checked = [];
  final String otherOption = "Lainnya";
  bool isOtherChecked = false;

  @override
  void initState() {
    super.initState();
    checked = List<bool>.filled(ciriCiriList.length, false);
  }

  @override
  void dispose() {
    super.dispose();
    _jumlahController.dispose();
    _ciriCiriController.dispose();
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
              'Kematian Ayam',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: _buildDetailLaporan(),
    );
  }

  Widget _buildDetailLaporan() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Jumlah Ayam Mati',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          CustomTextField(
            controller: _jumlahController,
            hintText: 'Masukkan jumlah ayam yang mati',
            labelText: 'Jumlah Ayam',
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
            ],
          ),
          const SizedBox(height: 16),
          const Text(
            'Ciri-ciri Ayam Mati',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),
          ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: ciriCiriList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                    value: checked[index],
                    onChanged: (bool? value) {
                      setState(() {
                        checked[index] = value!;
                      });
                    },
                  ),
                  const SizedBox(width: 12),
                  Text(
                    ciriCiriList[index],
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              );
            },
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Checkbox(
                value: isOtherChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isOtherChecked = value!;
                  });
                },
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    const Text('Lainnya', style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: _ciriCiriController,
                      enabled: isOtherChecked,
                      minLines: 4,
                      hintText: 'Lainnya',
                      labelText: 'Lainnya',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          context.watch<LaporanProvider>().loadingState.maybeWhen(
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                orElse: () => _buildButtonConfirmation(),
              ),
        ],
      ),
    );
  }

  List<String> getSelectedCiriCiri() {
    List<String> selectedCiriCiri = [];

    for (int i = 0; i < checked.length; i++) {
      if (checked[i]) {
        selectedCiriCiri.add(ciriCiriList[i]);
      }
    }

    if (isOtherChecked && _ciriCiriController.text.isNotEmpty) {
      selectedCiriCiri.add(_ciriCiriController.text);
    }

    return selectedCiriCiri;
  }

  Widget _buildButtonConfirmation() {
    return CustomButton(
        function: () {
          showDialog(
            context: context,
            builder: (context) {
              return MyAlertDialog(
                title: 'Laporkan Kematian Ayam',
                description:
                    'Apakah anda yakin ingin melaporkan kematian ayam ini ?',
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
        text: 'Laporkan');
  }

  void _onSubmit() async {
    List<String> selectedCiriCiri = getSelectedCiriCiri();

    final provider = context.read<LaporanProvider>();

    final jumlahAyam = _jumlahController.text;
    final ciriCiri = selectedCiriCiri.join(', ');

    if (jumlahAyam.isEmpty) {
      ToastMessage.show(context, 'Jumlah ayam tidak boleh kosong');
      return;
    }

    await provider
        .createLaporanKematian(
      idKandang: widget.extraId,
      keterangan: ciriCiri,
      jumlah: jumlahAyam,
    )
        .then((value) {
      if (provider.uploadResponse != null && mounted) {
        context.goNamed('home');
        ToastMessage.show(context, 'Laporan berhasil dibuat');
      }
    });
  }
}
