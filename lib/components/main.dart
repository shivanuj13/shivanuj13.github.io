import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/sections/header.dart';
import 'package:anuj_kumar/sections/about.dart';
import 'package:anuj_kumar/sections/experience.dart';
import 'package:anuj_kumar/sections/projects.dart';
import 'package:anuj_kumar/sections/skills.dart';
import 'package:anuj_kumar/sections/footer.dart';

@client
class Main extends StatelessComponent {
  const Main({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'min-h-screen bg-[#0B0B0E] text-gray-300 font-sans selection:bg-violet-500/30 selection:text-violet-200 overflow-x-hidden',
      [
        // Background glows
        div(classes: 'fixed top-0 left-0 w-full h-full overflow-hidden -z-10 pointer-events-none', [
          div(classes: 'absolute top-[-10%] left-[-10%] w-[500px] h-[500px] bg-violet-600/10 rounded-full blur-[120px] opacity-40', []),
          div(classes: 'absolute top-[20%] right-[-10%] w-[400px] h-[400px] bg-fuchsia-600/10 rounded-full blur-[100px] opacity-30', []),
          div(classes: 'absolute bottom-[-10%] left-[20%] w-[600px] h-[600px] bg-indigo-600/10 rounded-full blur-[120px] opacity-30', []),
        ]),

        // Header
        HeaderSection(),

        // Content sections
        About(),
        ExperienceSection(),
        ProjectsSection(),
        SkillsSection(),
        FooterSection(),
      ],
    );
  }
}
