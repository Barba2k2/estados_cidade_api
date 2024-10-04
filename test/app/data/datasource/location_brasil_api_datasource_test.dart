
import 'package:test/test.dart';

import 'package:estados_cidade_api/app/data/datasource/location_brasil_api_datasource.dart';
import 'package:estados_cidade_api/app/models/state_model.dart';

void main() {
  late LocationBrasilApiDatasource datasource;

  setUp((){
    datasource = LocationBrasilApiDatasource();
  });

  test('getState return SP', () async {
    final result = await datasource.getStates();

    expect(result, isA<List<StateModel>>());
    expect(result.isNotEmpty, true);

    final isStateSp = result.any((state) => state.acronym == 'SP');
    expect(isStateSp, true);
  });
}