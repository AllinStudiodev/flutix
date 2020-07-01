part of 'shared.dart';

Future<File> getImage() async {
  final _picker = ImagePicker();
  final pickedImage = await _picker.getImage(source: ImageSource.gallery);
  final File image = File(pickedImage.path);
  return image;
}

Future<String> uploadImage(File image) async {
  String fileName = basename(image.path);

  StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
  StorageUploadTask task = ref.putFile(image);
  StorageTaskSnapshot snapshot = await task.onComplete;

  return await snapshot.ref.getDownloadURL();
}
