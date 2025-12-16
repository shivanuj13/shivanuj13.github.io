import 'package:anuj_kumar/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart';

@client
class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', classes: 'py-20 px-6 max-w-6xl mx-auto', [
      h2(classes: 'text-2xl md:text-3xl font-bold text-white mb-12 flex items-center gap-3', [
        Code(styles: Styles(color: violet600)),
        Component.text('Featured Projects'),
      ]),

      div(classes: 'grid grid-cols-1 md:grid-cols-2 gap-6', [
        for (var proj in data.projects.list)
          a(
            href: proj.link,
            classes:
                'group p-6 md:p-8 rounded-2xl bg-white/[0.02] border border-white/5 hover:border-violet-500/30 hover:bg-white/[0.04] hover:shadow-[0_0_30px_rgba(124,58,237,0.1)] transition-all duration-300 flex flex-col h-full',
            [
              div(classes: 'flex justify-between items-start mb-4', [
                div([
                  h3(
                    classes:
                        'text-lg md:text-xl font-bold text-gray-200 group-hover:text-violet-300 transition-colors flex items-center gap-2',
                    [Component.text(proj.title)],
                  ),
                  p(classes: 'text-xs text-fuchsia-400/80 font-mono mt-1', [Component.text(proj.tech)]),
                ]),
                if (proj.tinyDesc != null)
                  span(
                    classes:
                        'text-xs font-medium px-2 py-1 rounded bg-emerald-400/10 text-emerald-400 border border-emerald-400/20 whitespace-nowrap',
                    [Component.text(proj.tinyDesc!)],
                  ),
              ]),
              p(classes: 'text-gray-400 text-sm leading-relaxed flex-grow', [Component.text(proj.desc)]),
            ],
          ),
      ]),
    ]);
  }
}
