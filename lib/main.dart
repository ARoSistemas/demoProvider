import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//
import 'package:demo_provider/controllers/home_ctrler.dart';
import 'package:demo_provider/screens/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // para que funcione el provider, debes envolver el material app en el Provider,,,

    // valgase la redundancia...

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeCtrler()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ARo Sistemas',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
