import 'package:dio/dio.dart';
import 'package:estados_cidade_api/app/models/state_model.dart';

class LocationBrasilApiDatasource {
  Future<List<StateModel>> getStates() async {
    final Response(:List data) =
        await Dio().get('https://brasilapi.com.br/api/ibge/uf/v1');

    return data.map((s) => StateModel.fromMap(s)).toList();
  }
}
