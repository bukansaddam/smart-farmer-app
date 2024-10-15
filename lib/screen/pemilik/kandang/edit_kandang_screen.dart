import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/detail_kandang.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/text_field.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class EditKandangScreen extends StatefulWidget {
  const EditKandangScreen({
    super.key,
    required this.idKandang,
    required this.detailKandang,
  });

  final String idKandang;
  final DetailKandang detailKandang;

  @override
  State<EditKandangScreen> createState() => _EditKandangScreenState();
}

class _EditKandangScreenState extends State<EditKandangScreen> {
  final _nameController = TextEditingController();
  final _lokasiController = TextEditingController();
  final _jumlahAyamController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  late KandangProvider _kandangProvider;

  @override
  void initState() {
    super.initState();
    _kandangProvider = Provider.of<KandangProvider>(context, listen: false);

    Future.microtask(() {
      _kandangProvider.addExistingImage(widget.detailKandang);
      _kandangProvider.combineImages();
    });

    _nameController.text = widget.detailKandang.nama;
    _lokasiController.text = widget.detailKandang.lokasi;
    _jumlahAyamController.text = widget.detailKandang.jumlahAyam.toString();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _lokasiController.dispose();
    _jumlahAyamController.dispose();
    _kandangProvider.clearImage();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add kandang'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Image',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                _buildImage(context),
                const SizedBox(height: 12),
                const Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _nameController,
                  hintText: 'Input inventory name here',
                  labelText: 'Name',
                ),
                const SizedBox(height: 12),
                const Text(
                  'Lokasi',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _lokasiController,
                  hintText: 'Input location here',
                  labelText: 'Lokasi',
                ),
                const SizedBox(height: 12),
                const Text(
                  'Jumlah Ayam',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _jumlahAyamController,
                  hintText: 'Input jumlah ayam here',
                  labelText: 'Jumlah Ayam',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(height: 60),
                context.watch<KandangProvider>().loadingState.when(
                      initial: () => CustomButton(
                        function: _onSubmit,
                        text: 'Submit',
                      ),
                      loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: () => CustomButton(
                        function: _onSubmit,
                        text: 'Submit',
                      ),
                      error: (message) => CustomButton(
                        function: _onSubmit,
                        text: 'Submit',
                      ),
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    final provider = context.watch<KandangProvider>();

    return provider.combinedImages.isNotEmpty
        ? SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: provider.combinedImages.length + 1,
              itemBuilder: (context, index) {
                if (index == provider.combinedImages.length) {
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
                  final isProviderImage =
                      provider.combinedImages[index]['isProvider'] as bool;
                  final imageUrl =
                      provider.combinedImages[index]['url'] as String;
                  final imageId =
                      provider.combinedImages[index]['id'] as String?;

                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: InkWell(
                      onTap: () {
                        ToastMessage.show(
                            context, 'Long press to delete image');
                      },
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
                                  onPressed: () async {
                                    if (isProviderImage) {
                                      provider.removeImage(index -
                                          provider.existingImages.length);
                                    } else {
                                      provider.deleteExistingImage(imageId!);
                                      debugPrint(
                                          'Deleted: ${provider.deletedImages}');
                                    }
                                    provider.combineImages();
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
                        child: isProviderImage
                            ? Image.file(
                                File(imageUrl),
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              )
                            : Image.network(
                                imageUrl,
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
    final provider = context.read<KandangProvider>();

    final isMacOS = defaultTargetPlatform == TargetPlatform.macOS;
    final isLinux = defaultTargetPlatform == TargetPlatform.linux;
    if (isMacOS || isLinux) return;

    final ImagePicker picker = ImagePicker();

    final XFile? pickedFile =
        await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      if (!mounted) return;
      if (provider.imageUrls.isNotEmpty) {
        provider.addImage(pickedFile);
      }
      provider.setImages([pickedFile]);
      ToastMessage.show(context, 'Image added');
      provider.combineImages();
    }
  }

  void _onGalleryView() async {
    final provider = context.read<KandangProvider>();

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
      provider.combineImages();
    }

    if (mounted) {
      context.pop();
    }
  }

  void _onSubmit() async {
    final provider = context.read<KandangProvider>();
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final lokasi = _lokasiController.text;
      final jumlahAyam = _jumlahAyamController.text;

      await provider
          .updateKandang(
              idKandang: widget.idKandang,
              nama: name,
              lokasi: lokasi,
              latitude: 0,
              longitude: 0,
              jumlahAyam: int.parse(jumlahAyam))
          .then((_) {
        if (provider.uploadResponse!.success) {
          provider.refreshKandang();
          if (mounted) {
            context.pop();
            ToastMessage.show(context, 'kandang updated');
          }
        } else {
          if (mounted) {
            ToastMessage.show(context, provider.uploadResponse!.message);
          }
        }
      }).catchError((error) {
        if (mounted) {
          ToastMessage.show(context, error.toString());
        }
      });
    }
  }
}
