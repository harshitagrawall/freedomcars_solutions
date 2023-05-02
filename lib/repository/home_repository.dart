import 'package:freedomcars/data/network/base_api_services.dart';
import 'package:freedomcars/data/network/network_api_services.dart';
import 'package:freedomcars/resources/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiResponse();

  Future<dynamic> logInApi(dynamic data) async {
    try {
      dynamic response =
      await _apiServices.getPostApiResponse(AppUrl.logInEndPoint, data);
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
      await _apiServices.getPostApiResponse(AppUrl.signUpEndPoint, data);
    } catch (e) {
      throw e;
    }
  }
}

