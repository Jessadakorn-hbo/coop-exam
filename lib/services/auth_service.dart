import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final SupabaseClient client;

  AuthService(this.client);

  Future<void> signIn(String email, String password) async {
    final response = await client.auth.signInWithPassword(email: email, password: password);
    if (response.error != null) throw response.error!;
  }

  Future<void> signOut() async {
    await client.auth.signOut();
  }
}