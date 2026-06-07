import 'package:anuj_kumar/components/ui/section_heading.dart';
import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/generated_icons/git_pull_request.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide Target;

@client
class ContributionsSection extends StatelessComponent {
  const ContributionsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'contributions',
      classes: '$kContainer $kSectionSpacing',
      [
        SectionHeading(
          title: 'Contribution',
          icon: GitPullRequest(styles: Styles(color: bronze, width: 28.px, height: 28.px)),
        ),
        div(classes: 'space-y-8', [
          for (var contribution in data.contributions.list) _contributionCard(contribution),
        ]),
      ],
    );
  }

  Component _contributionCard(Contribution contribution) {
    return div(
      classes: '$kCardSurface p-8',
      [
        div(classes: 'flex flex-col sm:flex-row sm:items-start sm:justify-between gap-4 mb-8', [
          div([
            p(classes: kLabel, [Component.text(contribution.repository)]),
            h3(classes: 'font-display text-xl md:text-2xl font-medium text-primary mt-3', [
              Component.text(contribution.project),
            ]),
          ]),
          a(
            href: contribution.link,
            target: Target.blank,
            classes:
                'inline-flex items-center gap-2 text-xs font-medium text-bronze transition-editorial-fast hover:opacity-80 shrink-0',
            [
              Component.text('All pull requests'),
              ExternalLink(styles: Styles(width: 12.px, height: 12.px)),
            ],
          ),
        ]),
        div(classes: 'space-y-4', [
          for (var pr in contribution.pullRequests) _pullRequestRow(pr),
        ]),
      ],
    );
  }

  Component _pullRequestRow(ContributionPullRequest pr) {
    return a(
      href: pr.link,
      target: Target.blank,
      classes:
          'group block rounded-xl border border-brand bg-surface-elevated p-5 transition-editorial hover:border-bronze/40 hover:-translate-y-0.5',
      [
        div(classes: 'flex flex-col sm:flex-row sm:items-start sm:justify-between gap-3 mb-3', [
          div(classes: 'flex flex-wrap items-center gap-2', [
            span(
              classes: 'text-xs font-mono text-muted',
              [Component.text('#${pr.number}')],
            ),
            span(classes: _statusClasses(pr.status), [Component.text(pr.status)]),
            span(
              classes: 'text-xs text-muted font-body',
              [Component.text(pr.date)],
            ),
          ]),
        ]),
        p(
          classes: 'text-sm text-primary leading-[1.7] font-medium group-hover:text-bronze transition-editorial-fast',
          [Component.text(pr.title)],
        ),
        if (pr.labels.isNotEmpty)
          div(classes: 'flex flex-wrap gap-2 mt-4', [
            for (var label in pr.labels)
              span(classes: kTag, [Component.text(label)]),
          ]),
      ],
    );
  }

  String _statusClasses(String status) {
    final base = 'text-xs font-medium px-2.5 py-1 rounded-md border';
    return switch (status) {
      'Merged' => '$base bg-bronze/10 border-bronze/30 text-bronze',
      'Open' => '$base bg-surface border-brand text-muted',
      _ => '$base bg-surface border-brand text-muted',
    };
  }
}
