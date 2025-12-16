// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:anuj_kumar/components/main.dart' as _main;
import 'package:anuj_kumar/sections/about.dart' as _about;
import 'package:anuj_kumar/sections/experience.dart' as _experience;
import 'package:anuj_kumar/sections/footer.dart' as _footer;
import 'package:anuj_kumar/sections/header.dart' as _header;
import 'package:anuj_kumar/sections/projects.dart' as _projects;
import 'package:anuj_kumar/sections/skills.dart' as _skills;
import 'package:anuj_kumar/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clients: {
    _app.App: ClientTarget<_app.App>('app'),
    _main.Main: ClientTarget<_main.Main>('main'),
    _about.About: ClientTarget<_about.About>('about'),
    _experience.ExperienceSection: ClientTarget<_experience.ExperienceSection>(
      'experience',
    ),
    _footer.FooterSection: ClientTarget<_footer.FooterSection>('footer'),
    _header.HeaderSection: ClientTarget<_header.HeaderSection>('header'),
    _projects.ProjectsSection: ClientTarget<_projects.ProjectsSection>(
      'projects',
    ),
    _skills.SkillsSection: ClientTarget<_skills.SkillsSection>('skills'),
  },
);
