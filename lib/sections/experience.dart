import 'package:anuj_kumar/constants/theme.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr_lucide/generated_icons/layers.dart';

@client
class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'experience', classes: 'py-20 px-6 max-w-6xl mx-auto', [
      h2(classes: 'text-2xl md:text-3xl font-bold text-white mb-12 flex items-center gap-3', [
        Layers(styles: Styles(color: violet600)),
        Component.text('Experience'),
      ]),

      div(classes: 'relative border-l border-white/10 ml-3 md:ml-6 space-y-12', [
        for (var job in data.experiences.list)
          div(classes: 'relative pl-8 md:pl-12 group', [
            div(
              classes:
                  'absolute -left-[5px] top-2.5 w-2.5 h-2.5 rounded-full bg-[#0B0B0E] border-2 border-indigo-500 group-hover:bg-fuchsia-500 group-hover:border-fuchsia-500 group-hover:scale-125 transition-all shadow-[0_0_10px_rgba(99,102,241,0.5)]',
              [],
            ),
            div(classes: 'flex flex-col md:flex-row md:items-baseline justify-between mb-2', [
              h3(classes: 'text-lg md:text-xl font-bold text-gray-200 group-hover:text-violet-400 transition-colors', [
                Component.text(job.role),
              ]),
              span(
                classes:
                    'text-xs md:text-sm font-mono text-gray-500 bg-white/5 px-2 py-1 rounded mt-1 md:mt-0 w-fit border border-white/5',
                [Component.text(job.date)],
              ),
            ]),

            div(classes: 'flex flex-wrap items-center gap-x-3 gap-y-1 text-gray-500 text-sm mb-4', [
              span(classes: 'font-medium text-gray-300', [Component.text(job.company)]),
              span(classes: 'hidden md:inline', [Component.text('•')]),
              span(classes: 'flex items-center gap-1', [Component.text(job.location)]),
            ]),

            ul(classes: 'space-y-3 mb-5', [
              for (var desc in job.description)
                li(classes: 'text-gray-400 text-sm leading-relaxed flex items-start gap-3', [
                  span(classes: 'mt-2 w-1 h-1 rounded-full bg-violet-500/50 flex-shrink-0', []),
                  Component.text(desc),
                ]),
            ]),

            div(classes: 'flex flex-wrap gap-2', [
              for (var t in job.tech)
                span(
                  classes:
                      'text-xs px-2.5 py-1 rounded-md bg-white/5 border border-white/10 text-violet-200/70 group-hover:border-violet-500/40 transition-colors',
                  [Component.text(t)],
                ),
            ]),
          ]),
      ]),
    ]);
  }
}
