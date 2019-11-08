
import 'package:carros_flutter_web/pages/default_pages.dart';
import 'package:flutter/cupertino.dart';

class AppModel extends ChangeNotifier {

  Widget page;

  AppModel(){
    page = DefaultPage();
  }

  setPage(Widget page){
    this.page = page;

    notifyListeners();
  }
}