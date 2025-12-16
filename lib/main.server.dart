import 'package:anuj_kumar/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';
import 'app.dart';
import 'main.server.options.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultServerOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(
    Document(
      title: 'Anuj Kumar',
      head: [
        link(href: 'styles.css', rel: 'stylesheet'),
      ],
      styles: [
        // Special import rule to include to another css file.
        // css.import('https://fonts.googleapis.com/css?family=Roboto'),
        // Each style rule takes a valid css selector and a set of styles.
        // Styles are defined using type-safe css bindings and can be freely chained and nested.
        css('html, body').styles(
          width: 100.percent,
          minHeight: 100.vh,
          padding: Padding.zero,
          margin: Margin.zero,
          // fontFamily: const FontFamily.list([FontFamily('Roboto'), FontFamilies.sansSerif]),
          backgroundColor: primaryBackground,
        ),
      ],
      body: App(),
    ),
  );
}
