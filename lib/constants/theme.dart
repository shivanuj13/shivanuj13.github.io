import 'package:jaspr/dom.dart';

// Bronze palette — aligned with CSS tokens (for Lucide Styles only)
const bronze = Color('#b07a42');
const bronzeBright = Color('#d29a5e');
const bronzeDark = Color('#8a5b2a');

// Layout
const kContainer = 'max-w-[1200px] mx-auto px-6 md:px-8';

// Hero clears the fixed header; bottom matches half of kSectionSpacing
const kHeroSpacing = 'pt-32 md:pt-36 pb-16 md:pb-20';

// Uniform gap between sections = bottom + top = 32/40 spacing units (128px / 160px)
const kSectionSpacing = 'py-6 md:py-16';

// Space between a section title and its content
const kSectionTitleGap = 'mb-8 md:mb-10';

// Footer top aligns with section rhythm; bottom is slightly tighter
const kFooterSpacing = 'pt-16 md:pt-20 pb-12 md:pb-16';

// Surfaces
const kCardSurface = 'bg-surface border border-brand rounded-2xl';
const kCardElevated = 'bg-surface-elevated border border-brand rounded-2xl';

// Buttons
const kBtnPrimary = 'btn-primary';
const kBtnSecondary =
    'inline-flex items-center justify-center gap-2 px-6 py-3 rounded-xl bg-transparent border border-bronze text-bronze font-medium transition-editorial hover:-translate-y-0.5 hover:bg-bronze/5';
const kBtnIcon =
    'p-3 rounded-xl bg-transparent border border-brand text-muted transition-editorial-fast hover:text-bronze hover:border-bronze/40';

// Typography
const kWordmark = 'uppercase tracking-[0.12em] text-bronze font-display font-medium text-sm';
const kSectionTitle = 'font-display text-display-section font-medium text-primary';
const kLabel = 'uppercase tracking-[0.12em] text-bronze text-xs font-medium font-display';

// Tags
const kTag = 'text-xs px-2.5 py-1 rounded-md bg-surface border border-brand text-muted';
