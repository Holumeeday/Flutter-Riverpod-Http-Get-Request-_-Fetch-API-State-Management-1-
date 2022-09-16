

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutterriverpodhttprequest/service/services.dart';

import '../model/usermodel.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async {
   return ref.watch(userProvider).getUsers();
});