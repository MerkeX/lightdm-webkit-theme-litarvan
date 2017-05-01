import 'dart:html';
import 'package:angular2/core.dart';
import 'package:lightdm_webkit_theme_litarvan/components/clock/clock_component.dart';
import 'package:lightdm_webkit_theme_litarvan/util.dart';

@Component(
  selector: 'splash',
  styleUrls: const ['splash_component.css'],
  templateUrl: 'splash_component.html',
  directives: const [ClockComponent]
)
class SplashComponent implements OnInit {
  @override
  ngOnInit() {
    window.onKeyUp.listen((event) {
      var splash = $('splash');

      if ((event.keyCode == KeyCode.ENTER || event.keyCode == KeyCode.SPACE) && splash.style.opacity == '') {
        fadeSwitch(splash, $('login'), 'inline-block');
      }
    });
  }
}
