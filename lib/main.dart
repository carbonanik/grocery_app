import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'core/graph_api_client.dart';
import 'di/locator.dart';
import 'route/route_helper.dart';


void main() async {
  await initHiveForFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  // init();
  setup();
  runApp(const MyApp());
}

Color backgroundColor = Colors.green.shade50;
Color greenColor = const Color(0xFF87C428);
Color alphaBlack = const Color.fromARGB(228, 0, 0, 0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GraphQLProvider(
      client: locator.get<GraphQLService>().client,
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        getPages: RouteHelper.routes,
        initialRoute: RouteHelper.getInitial(),
      ),
    );
  }
}
