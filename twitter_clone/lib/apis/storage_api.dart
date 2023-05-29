import 'dart:io';
import 'package:appwrite/appwrite.dart';
import 'package:twitter_clone/constants/appwrite_constants.dart';
class StorageAPI {
  final Storage _storage;
  StorageAPI({required Storage storage}) : _storage = storage;

  Future<List<String>> uploadImage(List<File> files) async {
    List<String> imageLinks = [];
    for(final file in files) {
      final uploadedImage = await _storage.createFile(
        bucketId: AppwriteConstants.imagesBucket, 
        fileId: ID.unique(), 
        file: InputFile.fromPath(path: file.path,
        ),
      );
      imageLinks.add(uploadedImage.$id);
    }
    return imageLinks;
  }
}