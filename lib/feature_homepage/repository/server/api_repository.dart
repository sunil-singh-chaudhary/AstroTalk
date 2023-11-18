import 'package:astrotalk_project/feature_homepage/model/astrolist_model.dart';
import 'package:astrotalk_project/feature_homepage/model/banner_model.dart';

abstract class ApiRepository {
  Future<BannerModel> fetchbannerData(String endpoint);
  Future<AstroListModel> fetchAstroList(String endpoint, String bearerToken);
}
