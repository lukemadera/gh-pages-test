import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';

import './routes.dart';

main() {
  setPathUrlStrategy();
  runApp(MyApp()
    //MultiProvider(
    //  providers: [
    //    //ChangeNotifierProvider(create: (context) => CurrentUserState()),
    //  ],
    //  child: MyApp(),
    //)
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    
    AppRouter appRouter = AppRouter(
      routes: AppRoutes.routes,
      notFoundHandler: AppRoutes.routeNotFoundHandler,
    );

    appRouter.setupRoutes();
  }

  @override
  Widget build(BuildContext context) {
    //Provider.of<CurrentUserState>(context, listen: false).checkAndLogin();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bestiary',
      onGenerateRoute: AppRouter.router.generator,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0, 167, 0, 1),
        accentColor: Color.fromRGBO(15, 69, 194, 1),
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Color.fromRGBO(0, 167, 0, 1),
          secondary: Color.fromRGBO(15, 69, 194, 1),
          primaryVariant: Color.fromRGBO(0, 124, 0, 1),
          secondaryVariant: Color.fromRGBO(6, 36, 104, 1),
          background: Color.fromRGBO(0, 181, 181, 1),
          surface: Color.fromRGBO(0, 93, 93, 1),
        ),
        backgroundColor: Colors.grey,
        textTheme: Theme.of(context).textTheme.copyWith(
          headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
          headline2: TextStyle(fontSize: 26, fontWeight: FontWeight.w300),
          headline3: TextStyle(fontSize: 21, fontWeight: FontWeight.w300),
          headline4: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
          headline5: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          bodyText1: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          bodyText2: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
        ).apply(
          bodyColor: Color.fromRGBO(90, 90, 90, 1),
          displayColor: Color.fromRGBO(90, 90, 90, 1),
        ),
        //elevatedButtonTheme: ElevatedButtonThemeData(
        //  style: ElevatedButton.styleFrom(
        //    textStyle: TextStyle(
        //      letterSpacing: 1.05,
        //    ),
        //  )
        //),
      ),
    );
  }
}
