import 'package:anuj_kumar/components/ui/section_heading.dart';
import 'package:anuj_kumar/constants/theme.dart';
import 'package:anuj_kumar/model/data_model.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_lucide/generated_icons/layers.dart';
import 'package:jaspr_lucide/jaspr_lucide.dart' hide List, Target;

@client
class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      id: 'experience',
      classes: '$kContainer $kSectionSpacing',
      [
        SectionHeading(
          title: 'Experience',
          icon: Layers(styles: Styles(color: bronze, width: 28.px, height: 28.px)),
        ),
        div(classes: 'relative border-l border-bronze/30 ml-2 md:ml-4 space-y-14 md:space-y-16', [
          for (var job in data.experiences.list)
            if (job.isGrouped)
              _groupedExperience(job)
            else
              _singleExperience(job),
        ]),
      ],
    );
  }

  Component _singleExperience(Experience job) {
    return div(classes: 'relative pl-8 md:pl-12', [
      _timelineMarker(),
      _companyHeader(job.company, job.role!, job.date!),
      if (job.location != null) _location(job.location!),
      _bulletList(job.description!),
      _techTags(job.tech!),
      _externalLinks(job),
    ]);
  }

  Component _groupedExperience(Experience job) {
    return div(classes: 'relative pl-8 md:pl-12', [
      _timelineMarker(),
      div(classes: 'flex flex-col md:flex-row md:items-baseline justify-between gap-2 mb-3', [
        h3(classes: 'text-lg md:text-xl font-semibold text-primary', [
          Component.text(job.company),
        ]),
        if (job.date != null)
          span(
            classes: 'text-xs text-muted font-body bg-surface border border-brand px-3 py-1 rounded-md w-fit',
            [Component.text(job.date!)],
          ),
      ]),
      
      if (job.location != null) _location(job.location!),
      if (job.note != null) _note(job.note!),
      _externalLinks(job, spacing: 'mb-5'),
      div(classes: 'space-y-10', [
        for (var i = 0; i < job.roles!.length; i++) ...[
          if (i > 0) div(classes: 'border-t border-brand', []),
          _roleBlock(job.roles![i]),
        ],
      ]),
    ]);
  }

  Component _roleBlock(ExperienceRole role) {
    return div(classes: 'space-y-4', [
      div(classes: 'flex flex-col sm:flex-row sm:items-baseline justify-between gap-2', [
        h4(classes: 'text-base font-medium text-primary', [Component.text(role.role)]),
        span(
          classes: 'text-xs text-muted font-body bg-surface-elevated border border-brand px-3 py-1 rounded-md w-fit',
          [Component.text(role.date)],
        ),
      ]),
      _bulletList(role.description),
      _techTags(role.tech),
    ]);
  }

  Component _timelineMarker() {
    return div(
      classes: 'absolute -left-[5px] top-2 w-2 h-2 rounded-full bg-bronze border-2 border-bg',
      [],
    );
  }

  Component _companyHeader(String company, String role, String date) {
    return div(classes: 'flex flex-col md:flex-row md:items-baseline justify-between gap-2 mb-3', [
      div([
        h3(classes: 'text-lg md:text-xl font-semibold text-primary', [
          Component.text(company),
        ]),
        p(classes: 'text-muted text-sm mt-1', [Component.text(role)]),
      ]),
      span(
        classes: 'text-xs text-muted font-body bg-surface border border-brand px-3 py-1 rounded-md w-fit',
        [Component.text(date)],
      ),
    ]);
  }

  Component _note(String note) {
    return p(classes: 'text-muted text-sm mb-2', [Component.text(note)]);
  }

  Component _location(String location) {
    return div(classes: 'flex flex-wrap items-center gap-x-3 gap-y-1 text-muted text-sm mb-5', [
      span([Component.text(location)]),
    ]);
  }

  Component _bulletList(List<String> items) {
    return ul(classes: 'space-y-3 mb-6', [
      for (var desc in items)
        li(classes: 'text-muted text-sm leading-[1.7] flex items-start gap-3', [
          span(classes: 'mt-2.5 w-1 h-1 rounded-full bg-bronze/50 shrink-0', []),
          Component.text(desc),
        ]),
    ]);
  }

  Component _techTags(List<String> tags) {
    return div(classes: 'flex flex-wrap gap-2', [
      for (var t in tags)
        span(classes: kTag, [Component.text(t)]),
    ]);
  }

  Component _externalLinks(Experience job, {String spacing = 'mt-4'}) {
    if (job.links == null || job.links!.isEmpty) return Component.fragment([]);
    return div(classes: '$spacing flex flex-wrap gap-x-5 gap-y-2', [
      for (var link in job.links!)
        a(
          href: link.url,
          target: Target.blank,
          classes:
              'inline-flex items-center gap-2 text-xs font-medium text-bronze transition-editorial-fast hover:opacity-80',
          [
            Component.text(link.label),
            ExternalLink(styles: Styles(width: 12.px, height: 12.px)),
          ],
        ),
    ]);
  }
}
