import 'dart:html';
import 'package:domino/html_view.dart';
import 'package:domino/node_helpers.dart';

void main() {
  bool safe = false;
  registerHtmlView(
      querySelector('#output'),
      div(children: [
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
      }));
}
