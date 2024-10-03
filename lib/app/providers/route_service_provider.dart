import 'package:vania/vania.dart';
import 'package:estados_cidade_api/route/api_route.dart';
import 'package:estados_cidade_api/route/web.dart';
import 'package:estados_cidade_api/route/web_socket.dart';

class RouteServiceProvider extends ServiceProvider {
  @override
  Future<void> boot() async {}

  @override
  Future<void> register() async {
    WebRoute().register();
    ApiRoute().register();
    WebSocketRoute().register();
  }
}
