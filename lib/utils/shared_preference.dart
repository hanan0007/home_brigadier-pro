import 'package:get_storage/get_storage.dart';
import 'package:home_brigadier_admin_panel/consts/static_data.dart';
import 'package:home_brigadier_admin_panel/models/login_res_model.dart';

class SharedPreference {
  static final GetStorage _getStorage = GetStorage();
  static const modelKey = 'modelKey';

  static storeUserInfo(LoginResponseModel model) {
    StaticData.accessToken = model.data!.token!;
    _getStorage.write(modelKey, model);
  }

  static getUserInfo() async {
    LoginResponseModel result = await _getStorage.read(modelKey);
    if (result.data != null) {
      StaticData.userInfo = result;
    }
  }
}
