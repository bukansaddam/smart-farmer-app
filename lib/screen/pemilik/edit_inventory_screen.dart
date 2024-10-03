import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/model/detail_inventory.dart';
import 'package:smart_farmer_app/provider/detail_inventory_provider.dart';
import 'package:smart_farmer_app/provider/inventory_provider.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/text_field.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';

class EditInventoryScreen extends StatefulWidget {
  const EditInventoryScreen(
      {super.key,
      required this.idInventory,
      required this.idKandang,
      required this.detailInventory,
      required this.category});

  final String idInventory;
  final String idKandang;
  final String category;
  final DetailInventory detailInventory;

  @override
  State<EditInventoryScreen> createState() => _EditInventoryScreenState();
}

class _EditInventoryScreenState extends State<EditInventoryScreen> {
  final _nameController = TextEditingController();
  final _stockController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  late InventoryProvider _inventoryProvider;

  List<String> category = ['Pedaging', 'Petelur'];

  String selectedCategory = '';

  @override
  void initState() {
    super.initState();
    _inventoryProvider = Provider.of<InventoryProvider>(context, listen: false);
    selectedCategory = category.first;

    Future.microtask(() {
      _inventoryProvider.addExistingImage(widget.detailInventory);
      _inventoryProvider.combineImages();
    });

    _nameController.text = widget.detailInventory.name;
    _stockController.text = widget.detailInventory.stock.toString();
    selectedCategory = widget.detailInventory.jenis == 'pakan pedaging'
        ? category[0]
        : category[1];
  }

  @override
  void dispose() {
    _nameController.dispose();
    _stockController.dispose();
    _inventoryProvider.clearImage();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add inventory'),
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
                widget.category == 'Pakan'
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Jenis',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey[200],
                            ),
                            child: DropdownButton<String>(
                              isExpanded: true,
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
                              },
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      )
                    : const SizedBox(),
                const Text(
                  'Stock',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                CustomTextField(
                  controller: _stockController,
                  hintText: 'Input inventory stock here',
                  labelText: 'Stock',
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(height: 60),
                context.watch<InventoryProvider>().loadingState.when(
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
    final provider = context.watch<InventoryProvider>();

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
    final provider = context.read<InventoryProvider>();

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
    final provider = context.read<InventoryProvider>();

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
    final provider = context.read<InventoryProvider>();
    if (_formKey.currentState!.validate()) {
      final name = _nameController.text;
      final stock = _stockController.text;
      final idKandang = widget.idKandang;

      String jenis = '';

      if (widget.category == 'Pakan') {
        if (selectedCategory == 'Pedaging') {
          jenis = 'pakan pedaging';
        } else {
          jenis = 'pakan petelur';
        }
      } else {
        jenis = widget.category;
      }

      await provider
          .updateInventory(
              idInventory: widget.idInventory,
              name: name,
              jenis: jenis,
              stock: int.parse(stock))
          .then((_) {
        if (provider.uploadResponse!.success) {
          if (mounted) {
            context.pushReplacementNamed('detail_inventory', pathParameters: {
              'id': widget.idInventory,
            }, extra: {
              'category': widget.category,
              'idKandang': idKandang,
            });
            ToastMessage.show(context, 'inventory updated');
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
