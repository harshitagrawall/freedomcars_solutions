import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:freedomcars/repository/home_repository.dart';
import 'package:freedomcars/resources/utils.dart';

class AuthViewModal with ChangeNotifier {
  final _myRepo = AuthRepository();

  bool _loading = false;

  bool get loading => _loading;

  bool _signUpLoading = false;

  bool get signUpLoading => _signUpLoading;

  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  Future<void> logInApi(dynamic data, BuildContext context) async {
    setLoading(true);
    _myRepo.logInApi(data).then((value) {
      setLoading(false);
      Utils.toastMessage('Login Successfully');
      print(value.toString());
    }).onError((error, stackTrace) {
      setLoading(false);
      Utils.toastMessage(error.toString());
      print(error.toString());
    });
  }

  Future<void> signUpApi(dynamic data, BuildContext context) async {
    setSignUpLoading(true);
    _myRepo.signUpApi(data).then((value) {
      setSignUpLoading(false);
      print(data);
      Utils.toastMessage('SignUp Successfuly');
      print(value.toString());
    }).onError((error, stackTrace) {
      setSignUpLoading(false);
      Utils.toastMessage(error.toString());
      print(error.toString());
    });
  }
}
