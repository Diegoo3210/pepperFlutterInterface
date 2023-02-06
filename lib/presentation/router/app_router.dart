import 'package:flutter/material.dart';
import 'package:pepper_interface/presentation/screens/home_view.dart';

import '../screens/g_settings_view.dart';
import '../screens/script.dart';

//Se setean las rutas para cambiar de Activity
class AppRouter{
  MaterialPageRoute? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      //Princiapal y por defecto
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeView(),
        );
        
      case '/globalSettings':
        return MaterialPageRoute(builder:(_)=>GSettingsView() );
      
      case '/scripts':
              return MaterialPageRoute(builder:(_)=>script() );
      
      default:
        return null;
    }
}
}