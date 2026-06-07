import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Target;

const _allProjectsUrl = 'https://github.com/shivanuj13?tab=repositories';

@client
class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'projects',
      classes: '$kContainer $kSectionSpacing',
      [
        div(
          classes: 'flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4 $kSectionTitleGap',
          [
            h2(
              classes: '$kSectionTitle flex items-center gap-3',
              [
                Code(styles: Styles(color: bronze, width: 28.px, height: 28.px)),
                Component.text('Featured Projects'),
              ],
            ),
            a(
              href: _allProjectsUrl,
              target: Target.blank,
              classes:
                  'inline-flex items-center gap-2 px-4 py-2 rounded-xl border border-brand text-muted text-xs font-medium transition-editorial-fast hover:text-bronze hover:border-bronze/40 shrink-0 self-start sm:self-center',
              [
                Component.text('All Projects'),
                ExternalLink(styles: Styles(width: 14.px, height: 14.px)),
              ],
            ),
          ],
        ),
        div(classes: 'grid grid-cols-1 lg:grid-cols-2 gap-8', [
          for (var proj in data.projects.list)
            a(
              href: proj.link,
              target: Target.blank,
              classes:
                  'group flex flex-col h-full rounded-[20px] bg-surface border border-brand p-8 transition-editorial hover:-translate-y-1 hover:border-bronze/40',
              [
                p(classes: kLabel, [Component.text(proj.category)]),
                h3(
                  classes:
                      'font-display text-xl md:text-2xl font-medium text-primary mt-4 mb-6 group-hover:text-bronze transition-editorial-fast',
                  [Component.text(proj.title)],
                ),
                div(classes: 'space-y-4 flex-grow', [
                  div([
                    p(classes: 'text-xs uppercase tracking-[0.08em] text-muted mb-1 font-display', [
                      Component.text('Problem'),
                    ]),
                    p(classes: 'text-sm text-muted leading-[1.7]', [Component.text(proj.problem)]),
                  ]),
                  div([
                    p(classes: 'text-xs uppercase tracking-[0.08em] text-bronze mb-1 font-display', [
                      Component.text('Outcome'),
                    ]),
                    p(classes: 'text-sm text-primary leading-[1.7] font-medium', [
                      Component.text(proj.outcome),
                    ]),
                  ]),
                  p(classes: 'text-xs text-muted font-mono pt-2', [Component.text(proj.tech)]),
                ]),
                div(classes: 'mt-8 pt-6 border-t border-brand flex items-center gap-2 text-sm text-bronze font-medium', [
                  Component.text('Explore'),
                  ArrowRight(
                    styles: Styles(width: 16.px, height: 16.px),
                  ),
                ]),
              ],
            ),
        ]),
      ],
    );
  }
}
