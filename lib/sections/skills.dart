import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/model/data_model.dart';

@client
class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'skills', classes: 'py-12 md:py-20 px-6 max-w-6xl mx-auto bg-gradient-to-b from-white/[0.02] to-transparent rounded-3xl my-10 md:my-20 border border-white/5 backdrop-blur-sm', [
      div(classes: 'grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 gap-8 md:gap-12', [
        for (var entry in data.skills.list)
          div([ 
            h3(classes: 'text-lg font-semibold text-white mb-6 flex items-center gap-2 border-b border-white/10 pb-3', [text(entry.category)]),
            div(classes: 'flex flex-wrap gap-2', [
              for (var skill in entry.skills)
                span(classes: 'px-3 py-1.5 text-sm rounded-lg bg-[#121217] border border-white/10 text-gray-400 hover:text-white hover:border-violet-500/40 hover:shadow-[0_0_10px_rgba(139,92,246,0.15)] transition-all cursor-default', [text(skill)]),
            ]),
          ]),
      ]),
    ]);
  }
}
