class AppwriteConstants {
  static const String databaseId = '641628e27771bf6c4fbc';
  static const String projectId = '641486a42bd0ee4249b4';
  static const String endPoint = 'http://localhost:80';
  static const String usersCollection = '64369282c8f4135d170c';
  static const String tweetsCollection = '6468f05011ed18a3d6fd';
  static const String imagesBucket = '64749621434293bf1ebf';
  static String imageUrl(String imageId) => 
  '$endPoint/storage/buckets/$imagesBucket/files/$imageId/view?project=$projectId&mode=admin';
}