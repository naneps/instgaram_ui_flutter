import 'package:image_picker/image_picker.dart';

pickImage(ImageSource source) async {
  final _imaegPicker = ImagePicker();
  XFile? _file = await _imaegPicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  }
  print("No Image selected");
}
