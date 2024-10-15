import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/detail_kandang.dart';
import 'package:smart_farmer_app/model/kandang.dart';
import 'package:smart_farmer_app/model/upload.dart';

class KandangProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  KandangProvider({
    required this.apiService,
    required this.authRepository,
  });

  KandangResponse? kandangResponse;
  LoadingState loadingState = const LoadingState.initial();
  UploadResponse? uploadResponse;

  int? pageItems = 1;
  int sizeItems = 10;

  List<Kandang> listKandang = [];

  Kandang? selectedKandang;

  List<XFile> _images = [];
  List<String> _imageUrls = [];

  List<XFile> get images => _images;
  List<String> get imageUrls => _imageUrls;

  List<String> deletedImages = [];
  List<Map<String, dynamic>> existingImages = [];
  List<Map<String, dynamic>> combinedImages = [];

  Future<void> getAllKandang({String? searchValue}) async {
    try {
      if (pageItems == 1) {
        loadingState = const LoadingState.loading();
        notifyListeners();
      }

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingState.error('Token is null');
        notifyListeners();
        return;
      }

      kandangResponse = await apiService.getKandang(
          token: token,
          page: pageItems,
          pageSize: sizeItems,
          nama: searchValue ?? '');

      if (kandangResponse!.success) {
        if (pageItems == 1) {
          listKandang.clear();
        }
        listKandang.addAll(kandangResponse!.result.data);

        loadingState = const LoadingState.loaded();
        notifyListeners();

        if (kandangResponse!.result.data.length < sizeItems) {
          pageItems = null;
        } else {
          pageItems = pageItems! + 1;
        }
      } else {
        loadingState = LoadingState.error(kandangResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> refreshKandang({String? searchValue}) async {
    pageItems = 1;
    listKandang.clear();
    await getAllKandang(searchValue: searchValue);
  }

  Future<void> setSelectedKandang({Kandang? kandang}) async {
    try {
      if (kandang == null) {
        selectedKandang = listKandang.first;
        notifyListeners();
      } else {
        selectedKandang = kandang;
        notifyListeners();
      }
      debugPrint("selected kandang : $kandang");
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> createKandang({
    required String nama,
    required String lokasi,
    required double latitude,
    required double longitude,
    required int jumlahAyam,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingState.error('Token is null');
        notifyListeners();
        return;
      }

      List<List<int>> compressedImages = [];
      List<String> filenames = [];

      for (var image in _images) {
        var bytes = await image.readAsBytes();
        var compressedBytes = await compressImage(bytes);
        var filename = image.name;
        filenames.add(filename);
        compressedImages.add(compressedBytes);
      }

      uploadResponse = await apiService.createKandang(
        token: token,
        nama: nama,
        lokasi: lokasi,
        latitude: latitude,
        longitude: longitude,
        jumlahAyam: jumlahAyam,
        images: compressedImages,
        filenames: filenames,
      );

      if (uploadResponse!.success) {
        loadingState = const LoadingState.loaded();
        notifyListeners();
      } else {
        loadingState = LoadingState.error(uploadResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> updateKandang({
    required String idKandang,
    required String nama,
    required String lokasi,
    required double latitude,
    required double longitude,
    required int jumlahAyam,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingState.error('Token is null');
        notifyListeners();
        return;
      }

      List<List<int>> compressedImages = [];
      List<String> filenames = [];

      for (var image in _images) {
        var bytes = await image.readAsBytes();
        var compressedBytes = await compressImage(bytes);
        var filename = image.name;
        filenames.add(filename);
        compressedImages.add(compressedBytes);
      }

      uploadResponse = await apiService.updateKandang(
        token: token,
        id: idKandang,
        nama: nama,
        lokasi: lokasi,
        latitude: latitude,
        longitude: longitude,
        jumlahAyam: jumlahAyam,
        images: compressedImages,
        filenames: filenames,
        deletedImages: deletedImages,
      );

      if (uploadResponse!.success) {
        loadingState = const LoadingState.loaded();
        notifyListeners();
      } else {
        loadingState = LoadingState.error(uploadResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> deleteKandang({
    required String idKandang,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      if (token == null) {
        loadingState = const LoadingState.error('Token is null');
        notifyListeners();
        return;
      }

      uploadResponse = await apiService.deleteKandang(
        token: token,
        idKandang: idKandang,
      );

      if (uploadResponse!.success) {
        loadingState = const LoadingState.loaded();
        notifyListeners();
      } else {
        loadingState = LoadingState.error(uploadResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<List<int>> compressImage(List<int> bytes) async {
    int imageLength = bytes.length;
    if (imageLength < 1000000) return bytes;

    final img.Image image = img.decodeImage(Uint8List.fromList(bytes))!;
    int compressQuality = 100;
    int length = imageLength;
    List<int> newByte = [];

    do {
      compressQuality -= 10;

      newByte = img.encodeJpg(
        image,
        quality: compressQuality,
      );

      length = newByte.length;
    } while (length > 1000000);

    return newByte;
  }

  void setImages(List<XFile> images) {
    _images = images;
    _imageUrls = images.map((e) => e.path).toList();
    notifyListeners();
  }

  void addImage(XFile image) {
    _images.add(image);
    _imageUrls.add(image.path);
    notifyListeners();
  }

  void addImages(List<XFile> newImages) {
    _images.addAll(newImages);
    _imageUrls.addAll(newImages.map((e) => e.path));
    notifyListeners();
  }

  void removeImage(int index) {
    _images.removeAt(index);
    _imageUrls.removeAt(index);
    combineImages();
    notifyListeners();
  }

  void clearImage() {
    _images = [];
    _imageUrls = [];
    deletedImages = [];
    WidgetsBinding.instance.addPostFrameCallback((_) {
      notifyListeners();
    });
  }

  void addExistingImage(DetailKandang detailInventory) {
    existingImages = detailInventory.kandangImages
        .map((image) => {
              'isProvider': false,
              'url': image.url.toString().contains('http')
                  ? image.url
                  : '${ApiService.baseUrl}/${image.url}',
              'id': image.id
            })
        .toList();
    notifyListeners();
  }

  void combineImages() {
    combinedImages = [
      ...existingImages,
      ..._imageUrls.map(
        (url) => {'isProvider': true, 'url': url},
      ),
    ];
    notifyListeners();
    debugPrint(combinedImages.toString());
  }

  void deleteExistingImage(String id) {
    existingImages.removeWhere((image) => image['id'] == id);
    deletedImages.add(id);
    notifyListeners();
  }
}
