import 'package:video_player/consts/consts.dart';
import 'api_helper.dart';

class InfoModel {
  Future getInfo() async {
    ApiHelper apiHelper = ApiHelper(kInfoUrl);
    var infoData = await apiHelper.getData();
    return infoData;
  }
}
