@HtmlImport('icon_toggle.html')
library first_polymer_components.lib.icon_toggle;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:web_components/web_components.dart' show HtmlImport;

@PolymerRegister('icon-toggle')
class IconToggle extends PolymerElement {
  @property String toggleIcon;

  @Property(notify: true, reflectToAttribute: true)
  bool pressed = false;

  IconToggle.created() : super.created();

  void ready(){
    print("$runtimeType::ready()");
  }

  // I like this way when it's for a function, since it still looks like

  @Listen('tap')
  void toggle(Event event, Map detail) {
    set('pressed', !pressed);
  }

//  void toggle([_, __]) {
//    set('pressed', !pressed);
//  }

}