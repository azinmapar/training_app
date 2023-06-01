import '../consts/consts.dart';
import 'api_helper.dart';

class InfoModel {
  Future getInfo() async {
    ApiHelper apiHelper = ApiHelper(kInfoUrl);
    var infoData = await apiHelper.getData();
    return infoData;
  }

  Future getVideoInfo() async {
    ApiHelper apiHelper = ApiHelper(kVideoInfoUrl);
    var infoData = await apiHelper.getData();
    return infoData;
  }
}
