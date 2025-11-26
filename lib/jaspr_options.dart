// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/components/main.dart' as prefix0;
import 'package:anuj_kumar/sections/about.dart' as prefix1;
import 'package:anuj_kumar/sections/experience.dart' as prefix2;
import 'package:anuj_kumar/sections/footer.dart' as prefix3;
import 'package:anuj_kumar/sections/header.dart' as prefix4;
import 'package:anuj_kumar/sections/projects.dart' as prefix5;
import 'package:anuj_kumar/sections/skills.dart' as prefix6;
import 'package:anuj_kumar/app.dart' as prefix7;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix7.App: ClientTarget<prefix7.App>('app'),

    prefix0.Main: ClientTarget<prefix0.Main>('components/main'),

    prefix1.About: ClientTarget<prefix1.About>('sections/about'),

    prefix2.ExperienceSection: ClientTarget<prefix2.ExperienceSection>(
      'sections/experience',
    ),

    prefix3.FooterSection: ClientTarget<prefix3.FooterSection>(
      'sections/footer',
    ),

    prefix4.HeaderSection: ClientTarget<prefix4.HeaderSection>(
      'sections/header',
    ),

    prefix5.ProjectsSection: ClientTarget<prefix5.ProjectsSection>(
      'sections/projects',
    ),

    prefix6.SkillsSection: ClientTarget<prefix6.SkillsSection>(
      'sections/skills',
    ),
  },
);
