import 'package:vania/vania.dart';
import 'package:estados_cidade_api/app/providers/route_service_provider.dart';

import 'cors.dart';

Map<String, dynamic> config = {
  'name': env('APP_NAME'),
  'url': env('APP_URL'),
  'cors': cors,
  'providers': <ServiceProvider>[
    RouteServiceProvider(),
  ],
};
