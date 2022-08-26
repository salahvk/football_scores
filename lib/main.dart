import 'package:flutter/material.dart';
import 'package:football_scores/components/routes_manager.dart';
import 'package:football_scores/components/theme_manager.dart';
import 'package:football_scores/provider/Data_Provider.dart';
import 'package:football_scores/provider/local_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Directory? dir = await getExternalStorageDirectory();
  // Hive.init(dir?.path);
  await Hive.initFlutter();
  // Hive.registerAdapter(ScheduleModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()),
        ChangeNotifierProvider(create: (_) => LocalProvider()),
      ],
      child: MaterialApp(
        title: 'Football Scores',
        debugShowCheckedModeBanner: false,
        theme: getApplicationTheme(context).copyWith(useMaterial3: true),
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
