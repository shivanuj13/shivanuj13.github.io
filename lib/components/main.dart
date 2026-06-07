import 'package:anuj_kumar/sections/about.dart';
import 'package:anuj_kumar/sections/contributions.dart';
import 'package:anuj_kumar/sections/experience.dart';
import 'package:anuj_kumar/sections/footer.dart';
import 'package:anuj_kumar/sections/header.dart';
import 'package:anuj_kumar/sections/projects.dart';
import 'package:anuj_kumar/sections/skills.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class Main extends StatelessComponent {
  const Main({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'min-h-screen bg-editorial text-primary font-body selection:bg-bronze/20 selection:text-bronze-bright overflow-x-hidden',
      [
        const HeaderSection(),
        const About(),
        const ExperienceSection(),
        const ProjectsSection(),
        const ContributionsSection(),
        const SkillsSection(),
        const FooterSection(),
      ],
    );
  }
}
