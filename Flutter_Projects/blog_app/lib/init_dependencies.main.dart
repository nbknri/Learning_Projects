import 'package:blog_app/core/secrets/app_secrets.dart';
import 'package:blog_app/injection.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> initDependencies() async {
  await Supabase.initialize(
    url: AppSecrets.supabaseUrl,
    anonKey: AppSecrets.supabaseAnonKey,
  );

  await Hive.initFlutter();

  await configureDependencies();
}
