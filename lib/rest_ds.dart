import 'package:covidtracker/utils/network_util.dart';


class RestDatasource {
  NetworkUtil _netUtil = new NetworkUtil();
  static final BASE_URL = "http://";
  static final Covid_URL = BASE_URL + "disease.sh/v2/countries";
  static final Covid_State_URL = BASE_URL + "api.rootnet.in/covid19-in/unofficial/covid19india.org/statewise";
  static final Covid_District_URL = BASE_URL + "api.covid19india.org/v2/state_district_wise.json";
  
}