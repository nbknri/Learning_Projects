import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:nbk_ai_chat/core/secrets/app_secrets.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  GenerativeModel get generativeModel =>
      GenerativeModel(model: AppSecrets.model, apiKey: AppSecrets.apiKey);
}
