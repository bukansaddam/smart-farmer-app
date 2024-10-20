import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smart_farmer_app/common/loading_state.dart';
import 'package:smart_farmer_app/data/api/api_service.dart';
import 'package:smart_farmer_app/data/local/auth_repository.dart';
import 'package:image/image.dart' as img;
import 'package:smart_farmer_app/model/detail_inventory.dart';
import 'package:smart_farmer_app/model/inventory.dart';
import 'package:smart_farmer_app/model/upload.dart';

class InventoryProvider extends ChangeNotifier {
  final ApiService apiService;
  final AuthRepository authRepository;

  InventoryProvider({
    required this.apiService,
    required this.authRepository,
  });

  LoadingState loadingState = const LoadingStateInitial();

  List<XFile> _images = [];
  List<String> _imageUrls = [];

  List<XFile> get images => _images;
  List<String> get imageUrls => _imageUrls;

  InventoryResponse? inventoryResponse;
  UploadResponse? uploadResponse;

  List<Inventory> inventories = [];

  int? pageItems = 1;
  int sizeItems = 10;

  List<String> deletedImages = [];
  List<Map<String, dynamic>> existingImages = [];
  List<Map<String, dynamic>> combinedImages = [];

  Future<void> getAllInventory(
      {String? searchValue,
      required String idKandang,
      String? category = ''}) async {
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

      if (category == 'Semua') {
        category = 'pakan';
      } else if (category == 'Pedaging') {
        category = 'pakan pedaging';
      } else if (category == 'Petelur') {
        category = 'pakan petelur';
      }

      inventoryResponse = await apiService.getInventory(
        token: token,
        idKandang: idKandang,
        page: pageItems,
        pageSize: sizeItems,
        jenis: category,
        name: searchValue,
      );

      if (inventoryResponse!.success) {
        if (pageItems == 1) {
          inventories.clear();
        }
        inventories.addAll(inventoryResponse!.result.data);

        loadingState = const LoadingState.loaded();
        notifyListeners();

        if (inventoryResponse!.result.data.length < sizeItems) {
          pageItems = null;
        } else {
          pageItems = pageItems! + 1;
        }
      } else {
        loadingState = LoadingState.error(inventoryResponse!.message);
        notifyListeners();
      }
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> refreshInventory({
    required String idKandang,
    String searchValue = '',
    String category = '',
  }) async {
    pageItems = 1;
    inventories.clear();
    await getAllInventory(
        idKandang: idKandang, searchValue: searchValue, category: category);
  }

  Future<void> createInventory({
    required String idKandang,
    required String nama,
    required String jenis,
    required int stock,
  }) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      List<List<int>> compressedImages = [];
      List<String> filenames = [];

      for (var image in _images) {
        var bytes = await image.readAsBytes();
        var compressedBytes = await compressImage(bytes);
        var filename = image.name;
        filenames.add(filename);
        compressedImages.add(compressedBytes);
      }

      uploadResponse = await apiService.createInventory(
        token: token!,
        idKandang: idKandang,
        nama: nama,
        jenis: jenis.toLowerCase(),
        stock: stock,
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
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> updateInventory({
    required String idInventory,
    required String name,
    required String jenis,
    required int stock,
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

      uploadResponse = await apiService.updateInventory(
        token: token,
        id: idInventory,
        name: name,
        stock: stock,
        jenis: jenis,
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
    } catch (e) {
      loadingState = LoadingState.error(e.toString());
      notifyListeners();
    }
  }

  Future<void> deleteInventory(String id) async {
    try {
      loadingState = const LoadingState.loading();
      notifyListeners();

      final repository = await authRepository.getUser();
      final token = repository?.token;

      uploadResponse = await apiService.deleteInventory(
        token: token!,
        idInventory: id,
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

  void addExistingImage(DetailInventory detailInventory) {
    existingImages = detailInventory.images
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
