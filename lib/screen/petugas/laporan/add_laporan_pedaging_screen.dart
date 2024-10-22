import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/laporan_provider.dart';
import 'package:smart_farmer_app/screen/widgets/alert_dialog.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/text_field.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class AddLaporanPedagingScreen extends StatefulWidget {
  const AddLaporanPedagingScreen({super.key, required this.extraId});

  final String extraId;

  @override
  State<AddLaporanPedagingScreen> createState() =>
      _AddLaporanPedagingScreenState();
}

class _AddLaporanPedagingScreenState extends State<AddLaporanPedagingScreen> {
  final _jumlahController = TextEditingController();
  late LaporanProvider _laporanProvider;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _laporanProvider = context.read<LaporanProvider>();
  }

  @override
  void dispose() {
    super.dispose();
    _jumlahController.dispose();
    _laporanProvider.clearImage();
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
              'Hasil Panen Ayam Pedaging',
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
                'Rata rata (Kg)',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              CustomTextField(
                controller: _jumlahController,
                hintText: 'Masukkan rata-rata berat ayam',
                labelText: 'Rata-rata Berat Ayam',
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'Lampiran',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              _buildImage(context),
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
                              title: 'Laporkan Panen Ayam Pedaging',
                              description:
                                  'Apakah anda yakin ingin melaporkan panen ayam pedaging ?',
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
                      text: 'Laporkan'),
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    final provider = context.watch<LaporanProvider>();
    return provider.imageUrls.isNotEmpty
        ? SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: provider.imageUrls.length + 1,
              itemBuilder: (context, index) {
                if (index == provider.imageUrls.length) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: InkWell(
                      onTap: () {
                        _buildBottomSheet(context);
                      },
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 50,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  );
                } else {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: InkWell(
                      onLongPress: () {
                        showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: const Text('Delete Image'),
                              content: const Text(
                                  'Are you sure want to delete this image?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: const Text('No'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    provider.removeImage(index);
                                    context.pop();
                                  },
                                  child: const Text('Yes'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.file(
                          File(provider.imageUrls[index]),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          )
        : InkWell(
            onTap: () {
              _buildBottomSheet(context);
            },
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Icon(
                  Icons.image_outlined,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
          );
  }

  Future<void> _buildBottomSheet(BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return SizedBox(
          height: 200,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16),
                child: Text(
                  'Add Image',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.camera),
                title: const Text('Camera'),
                onTap: () {
                  _onCameraView();
                },
              ),
              ListTile(
                leading: const Icon(Icons.image),
                title: const Text('Gallery'),
                onTap: () {
                  _onGalleryView();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _onCameraView() async {
    final provider = context.read<LaporanProvider>();

    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      if (!mounted) return;
      provider.addImage(pickedFile);
      ToastMessage.show(context, 'Image added');
      context.pop();
    }
  }

  void _onGalleryView() async {
    final provider = context.read<LaporanProvider>();

    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final ImagePicker picker = ImagePicker();

    final List<XFile> pickedFiles = await picker.pickMultiImage();

    if (pickedFiles.isNotEmpty && mounted) {
      if (provider.imageUrls.isNotEmpty) {
        provider.addImages(pickedFiles);
      } else {
        provider.setImages(pickedFiles);
      }
      ToastMessage.show(context, 'Image added');
      context.pop();
    }
  }

  void _onSubmit() async {
    final provider = context.read<LaporanProvider>();

    final rataRataBerat = _jumlahController.text;

    if (rataRataBerat.isEmpty) {
      ToastMessage.show(context, 'Jumlah ayam tidak boleh kosong');
      return;
    }

    await provider
        .createLaporanPedaging(
      idKandang: widget.extraId,
      jumlah: rataRataBerat,
    )
        .then((value) {
      if (provider.uploadResponse != null && mounted) {
        context.goNamed('home');
        ToastMessage.show(context, 'Laporan berhasil dibuat');
      }
    });
  }
}
