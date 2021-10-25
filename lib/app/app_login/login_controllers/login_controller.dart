import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class LoginController extends GetxController {
  static final LoginController controller = Get.put(LoginController());

  var telephone = TextEditingController();
  var password = TextEditingController();

  Future<List<ParseObject>> login() async {
    final queryLogin = QueryBuilder(ParseObject("Usuario"))
      ..whereEqualTo("telephone", telephone.text)
      ..whereEqualTo("telephone", password.text);
    final response = await queryLogin.query();
    if (response.success && response.results != null) {
      return response.results as List<ParseObject>;
    }
    return [];
  }

  Future<void> createCount() async {
    final queryLogin = QueryBuilder(ParseObject("Usuario"))
      ..whereEqualTo("telephone", telephone.text)
      ..whereEqualTo("telephone", password.text);
    final response = await queryLogin.query();
    if (response.success && response.results != null) {
      Get.snackbar("Conta", "Está conta já existe, faça login!");
    }
  }
}
