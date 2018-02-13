import 'dart:html';
import 'package:domino/html_view.dart';
import 'package:domino/node_helpers.dart';

class ExampleComp implements Component {
  bool safe = false;

  @override
  dynamic build(BuildContext context) => div(children: [
        safe
            ? div()
            : div(classes: ['not-safe'], attrs: {'data-not-safe': 'true'}),
        button(text: 'Toggle safety', events: {
          'click': (_) {
            safe = !safe;
          }
        }),
      ], attrs: {
        'id': 'main'
      });
}

void main() {
  registerHtmlView(querySelector('#output'), new ExampleComp());
}
