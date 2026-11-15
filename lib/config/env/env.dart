import 'package:envied/envied.dart';

part 'env.g.dart';

@envied
abstract class Env {
  @EnviedField(varName: 'APPWRITE_PROJECT_ID', obfuscate: true)
  static final String projectId = _Env.projectId;

  @EnviedField(varName: 'APPWRITE_PROJECT_NAME', obfuscate: true)
  static final String projectName = _Env.projectName;

  @EnviedField(varName: 'APPWRITE_ENDPOINT', obfuscate: true)
  static final String endpoint = _Env.endpoint;
}
