import 'package:appwrite/appwrite.dart';

class AppWriteService {
  static final AppWriteService _instance = AppWriteService._internal();
  factory AppWriteService() => _instance;
  AppWriteService._internal();

  late Client client;

  static const String _baseUrl = 'https://api.appwrite.io/v1';
  static const String _projectId = 'appwritelearnyt';

  void init() {
    client = Client();
    client.setEndpoint(_baseUrl).setProject(_projectId);
  }
}
