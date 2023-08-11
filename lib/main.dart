import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/controller/theme_manage.dart';
import 'package:groovvee/models/view_model/settings/setting.dart';
import 'package:groovvee/views/core/routers.dart';
import 'package:groovvee/views/screen/home_page.dart';
import 'package:groovvee/views/screen/music/vip_music.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:groovvee/views/utils/fonctions.dart';
import 'package:groovvee/views/utils/theme.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const ProviderScope(child:

      AppFrame()
  //MyApp()
  ));
}




class AppFrame extends ConsumerWidget {
  const AppFrame({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

   // updater.checkForUpdate();

   final appThemeMode =
   ref.watch(isDarkTheme);


    //final appLocale = ref.watch(
     // settingsViewModel.select((state) => state.locale),
    //);

   
   // SettingState settingState=SettingState(themeMode: themeMode, locale: locale)
   return MaterialApp.router(
     //supportedLocales: AppLocalizations.supportedLocales,
     //localizationsDelegates: AppLocalizations.localizationsDelegates,
     debugShowCheckedModeBanner: false,
     routerConfig: appRouter,
     //themeMode: appThemeMode,
     darkTheme: darkTheme,
     //locale: appLocale,
     theme: lightTheme,
     title: appTitle,
   );
  }
}





class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //routerConfig: appRouter,
        //themeMode: appThemeMode,
       // darkTheme: darkTheme,
        //locale: appLocale,
        theme: lightTheme,
        title: appTitle,
      home:
        const VipMusic()
        //const MusicHomePage()
      //const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: SafeArea(
        child:Stack(
          children: [
            SvgPicture.asset(
              AppAssetsImages.appBackground,
              fit: BoxFit.cover,
              color: Colors.yellow,
              height: double.maxFinite,
              width: double.maxFinite,
            ),

          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin:10,
        clipBehavior: Clip.antiAlias,
        child: Container(
          height: 60,
          color: Colors.red,
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
