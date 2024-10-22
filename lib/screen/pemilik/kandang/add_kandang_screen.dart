import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';
import 'package:smart_farmer_app/provider/kandang_provider.dart';
import 'package:smart_farmer_app/screen/widgets/button.dart';
import 'package:smart_farmer_app/screen/widgets/text_field.dart';
import 'package:smart_farmer_app/screen/widgets/toast_message.dart';
import 'package:geocoding/geocoding.dart' as geo;

class AddKandangScreen extends StatefulWidget {
  const AddKandangScreen({super.key});

  @override
  State<AddKandangScreen> createState() => _AddKandangScreenState();
}

class _AddKandangScreenState extends State<AddKandangScreen> {
  final _nameController = TextEditingController();
  final _lokasiController = TextEditingController();
  final _jumlahAyamController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  late KandangProvider _kandangProvider;

  LatLng? locationData;
  LatLng currentLocation = const LatLng(0, 0);

  geo.Placemark? placemark;

  @override
  void didChangeDependencies() {
    _kandangProvider = Provider.of<KandangProvider>(context, listen: false);
    super.didChangeDependencies();

    getMyLocation();

    if (locationData != null && placemark != null) {
      _lokasiController.text = '${placemark!.locality}';
    }
  }

  void getMyLocation() async {
    late bool serviceEnabled;
    late PermissionStatus permissionGranted;
    final Location location = Location();

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        debugPrint("Location services are not available");
        return;
      }
    }
    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        debugPrint("Location permission not granted");
        return;
      }
    }

    final locationDataResult = await location.getLocation();
    final latLng =
        LatLng(locationDataResult.latitude!, locationDataResult.longitude!);

    if (mounted) {
      setState(() {
        currentLocation = latLng;
        locationData = latLng;
      });
    }

    try {
      final placemarks = await geo.placemarkFromCoordinates(
        locationDataResult.latitude!,
        locationDataResult.longitude!,
      );
      if (placemarks.isNotEmpty) {
        setState(() {
          placemark = placemarks.first;
          _lokasiController.text = '${placemark!.locality}';
        });
      }
    } catch (e) {
      debugPrint('Error fetching placemark: $e');
    }
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
                Row(
                  children: [
                    Expanded(
                      child: CustomTextField(
                        controller: _lokasiController,
                        hintText: 'Input location here',
                        labelText: 'Lokasi',
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.only(left: 12),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: IconButton(
                        onPressed: () async {
                          final result = await context.pushNamed('maps',
                              extra: LatLng(currentLocation.latitude,
                                  currentLocation.longitude));

                          if (result is LatLng) {
                            setState(() {
                              locationData = result;
                            });

                            try {
                              final placemarks =
                                  await geo.placemarkFromCoordinates(
                                locationData!.latitude,
                                locationData!.longitude,
                              );

                              if (placemarks.isNotEmpty) {
                                setState(() {
                                  placemark = placemarks.first;
                                  _lokasiController.text =
                                      '${placemark!.locality}';
                                });
                              }
                            } catch (e) {
                              debugPrint('Error fetching placemark: $e');
                            }
                          }
                        },
                        icon: const Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
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
    final provider = context.read<KandangProvider>();

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
      context.pop();
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
          .createKandang(
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
            ToastMessage.show(context, 'inventory added');
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
