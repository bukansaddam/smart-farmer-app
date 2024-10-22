import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:smart_farmer_app/model/laporan.dart';
import 'package:smart_farmer_app/model/upload.dart';
import 'package:image/image.dart' as img;

class LaporanProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  LaporanProvider({required this.apiService, required this.authRepository});

  LaporanResponse? laporanResponse;
  LoadingState loadingState = const LoadingState.initial();
  UploadResponse? uploadResponse;

  int? pageItems = 1;
  int? sizeItems = 10;

  List<Laporan> listLaporan = [];

  List<XFile> _images = [];
  List<String> _imageUrls = [];

  List<XFile> get images => _images;
  List<String> get imageUrls => _imageUrls;

  List<String> deletedImages = [];
  List<Map<String, dynamic>> existingImages = [];
  List<Map<String, dynamic>> combinedImages = [];

  Future<void> getAllLaporan({
    String? kandang,
    String? jenis,
  }) async {
    try {
      if (pageItems == 1) {
        loadingState = const LoadingState.loading();
        notifyListeners();
      }

      final repository = await authRepository.getUser();
      final token = repository!.token;

      laporanResponse = await apiService.getAllLaporan(
        token: token,
        page: pageItems!,
        pageSize: sizeItems!,
        jenis: jenis == 'Semua' || jenis == null ? '' : jenis,
        kandang: kandang ?? '',
      );

      if (laporanResponse!.success) {
        if (pageItems == 1) {
          listLaporan.clear();
        }
        listLaporan.addAll(laporanResponse!.result.data);

        loadingState = const LoadingState.loaded();
        notifyListeners();

        if (laporanResponse!.result.data.length < sizeItems!) {
          pageItems = null;
        } else {
          pageItems = pageItems! + 1;
        }
      } else {
        loadingState = LoadingState.error(laporanResponse!.message);
        notifyListeners();
      }
    } catch (error) {
      loadingState = LoadingState.error(error.toString());
      notifyListeners();
    }
  }

  Future<void> refreshLaporan({
    String? jenis,
    String? kandang,
  }) async {
    pageItems = 1;
    listLaporan.clear();
    await getAllLaporan(jenis: jenis, kandang: kandang);
  }

  Future<void> createLaporanKematian({
    required String idKandang,
    required String keterangan,
    required String jumlah,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      uploadResponse = await apiService.createLaporanKematian(
        token: token,
        idKandang: idKandang,
        ciriKematian: keterangan,
        jumlah: jumlah,
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

  Future<void> createLaporanTelur({
    required String idKandang,
    required String jumlah,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      uploadResponse = await apiService.createLaporanTelur(
        token: token,
        idKandang: idKandang,
        jumlah: jumlah,
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

  Future<void> createLaporanPedaging({
    required String idKandang,
    required String jumlah,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository!.token;

      List<List<int>> compressedImages = [];
      List<String> filenames = [];

      for (var image in _images) {
        var bytes = await image.readAsBytes();
        var compressedBytes = await compressImage(bytes);
        var filename = image.name;
        filenames.add(filename);
        compressedImages.add(compressedBytes);
      }

      uploadResponse = await apiService.createLaporanPedaging(
        token: token,
        idKandang: idKandang,
        jumlah: jumlah,
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
