import 'package:gyansanchar/core/errors/exceptions.dart';
import 'package:gyansanchar/core/network/network_info.dart';
import '../../core/app_export.dart';

class ApiClient extends GetConnect {
  var url = "https://dev.in";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
    return;
  }

  bool _isSuccessCall(response) {
    return response.statusCode == 200;
  }
}
