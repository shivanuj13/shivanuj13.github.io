class DataModel {
  final Profile profile;
  final HeroStats heroStats;
  final Experiences experiences;
  final Projects projects;
  final Contributions contributions;
  final Skills skills;

  const DataModel({
    required this.profile,
    required this.heroStats,
    required this.experiences,
    required this.projects,
    required this.contributions,
    required this.skills,
  });
}

/// Instantiate one global data object
const data = DataModel(
  profile: Profile(
    name: "Anuj Kumar",
    title: "SDE 1 (Mobile) | Flutter Specialist",
    heroLabel: "MOBILE APPLICATION ENGINEER",
    heroHeadline: "Designing thoughtful mobile experiences with engineering precision.",
    tagline:
        "I partner with product teams to ship reliable mobile software. Focused on business outcomes, performance, and long-term maintainability.",
    location: "Bangalore, India",
    email: "shivanuj13@gmail.com",
    resumeLink: "https://drive.google.com/file/d/1R_P4aCJYRoHktbQo3-bYdydi2xB7xU5p/view?usp=drive_link",
    social: SocialLinks(
      linkedin: "https://linkedin.com/in/shivanuj13",
      github: "https://github.com/shivanuj13",
      twitter: "https://x.com/return_anuj",
    ),
  ),
  heroStats: const HeroStats(
    projectsDelivered: "10+",
    coreStack: "Flutter · Dart · SDUI",
    contribution: "Flutter SDK contributor",
  ),
  experiences: Experiences(
    list: [
      Experience(
        company: "PowerUp Money",
        location: "Bangalore, India",
        date: "Jul 2025 – Present",
        note: "1M+ installs",
        links: [
          ExperienceLink(
            url: "https://play.google.com/store/apps/details?id=money.powerup.uni.invest.app&hl=en_IN",
            label: "Google Play",
          ),
          ExperienceLink(
            url: "https://apps.apple.com/in/app/powerup-money-mutual-funds/id6470202376",
            label: "App Store",
          ),
        ],
        roles: [
          ExperienceRole(
            role: "SDE 2 (Mobile)",
            date: "Jan 2026 – Present",
            tech: ["Flutter", "Clean Architecture", "Dio", "Caching", "Server Driven UI", "Fintech"],
            description: [
              "Designed and implemented a smart network caching layer to reduce redundant API requests, improve perceived performance, and provide a more responsive user experience across investment journeys.",
              "Built a reusable custom pagination framework to support complex data-loading patterns and optimize large-scale portfolio and transaction views.",
              "Integrated MF Central's QR-code–based portfolio authorization flow, enabling users to securely import and synchronize mutual fund holdings across AMCs. The solution aligned with MF Central's newer QR-based consent mechanism introduced for portfolio sharing and tracking.",
              "Improved application architecture and shared UI foundations by extending reusable widgets, state-management patterns, and platform components used across multiple product surfaces.",
            ],
          ),
          ExperienceRole(
            role: "SDE 1 (Mobile)",
            date: "Jul 2025 – Dec 2025",
            tech: ["Flutter", "Server Driven UI", "Riverpod" "Fintech"],
            description: [
              "Developed end-to-end Mutual Fund Buy and Sell journeys, supporting seamless investment and redemption workflows for retail investors.",
              "Built investor dashboards for tracking orders, SIPs, portfolio activity, and transaction status, improving visibility into investment performance.",
              "Redesigned Mutual Fund Portfolio and Profile experiences using a Server Driven UI architecture, enabling faster iteration and remote configuration of product experiences.",
              "Streamlined foundational widgets and design-system components, improving UI consistency and reducing development effort across new features.",
              "Collaborated closely with product and backend teams to deliver scalable fintech experiences while maintaining high performance and reliability standards.",
            ],
          ),
        ],
      ),
      Experience(
        company: "LikeMinds",
        location: "Gurugram, India",
        date: "Sep 2023 – Present",
        links: [
          ExperienceLink(
            url: "https://pub.dev/publishers/likeminds.community/packages",
            label: "pub.dev Packages",
          ),
        ],
        roles: [
          ExperienceRole(
            role: "Software Engineer",
            date: "Jul 2024 – Present",
            tech: ["Flutter BLoC", "Dio", "Hive", "WebSocket", "MediaKit", "Firebase", "GenAI", "WebRTC"],
            description: [
              "Developed modular Flutter SDKs for chat and feed experiences using BLoC, Dio, Hive, WebSocket, MediaKit, and Firebase Messaging—adopted by client apps via likeminds_feed_flutter_core and likeminds_chat_flutter_core on pub.dev.",
              "Built Reel-style video feeds with pre-caching and lazy loading, reducing load time and improving scroll performance by 30% on mid-range devices.",
              "Implemented dual-side paginated chat threads and scroll-to-reply using CustomPainter for seamless UX in large conversations.",
              "Integrated GenAI to automate SDK setup and configuration, cutting integration time and boosting developer productivity.",
              "Created a browser-based Android preview system using Cuttlefish and WebRTC, enabling real-time remote testing and live demos.",
            ],
          ),
          ExperienceRole(
            role: "Flutter Developer Intern",
            date: "Sep 2023 – Jun 2024",
            tech: ["BLoC", "GetIt", "Amazon S3", "Firebase"],
            description: [
              "Developed core chat and feed features—real-time messaging, media sharing, notifications, and paginated data loading using BLoC, GetIt, Amazon S3, and Firebase.",
              "Improved SDK documentation to reduce client onboarding time.",
              "Delivered a full-featured Flutter demo app on the Play Store, showcasing SDK capabilities and enabling rapid client onboarding.",
            ],
          ),
        ],
      ),
    ],
  ),
  projects: Projects(
    list: [
      Project(
        title: "Monity",
        category: "Mobile Product",
        tech: "Flutter · Offline-First · Android · Credit Cards",
        link: "https://monity.buffersync.com/",
        problem:
            "Most expense trackers require cloud accounts, show ads, and make daily logging tedious—while rarely supporting offline credit card tracking alongside cash and UPI.",
        outcome:
            "Shipped an offline-first Android app with on-device storage, category budgets, credit card expense tracking, optional SMS capture, and zero ads—giving users private, calm budgeting.",
        desc:
            "Offline-first expense tracker for Android. Track cash, UPI, and credit card spending, set category limits, and manage budgets without an account or cloud sync.",
        tinyDesc: "BufferSync",
      ),
      Project(
        title: "Easy Alias CLI",
        category: "Developer Tooling",
        tech: "Dart CLI",
        link: "https://github.com/shivanuj13/easy_alias",
        problem:
            "Developers on macOS and Linux lack a simple, consistent way to manage shell aliases without editing config files by hand.",
        outcome:
            "Shipped an interactive CLI that lets users create, list, and toggle aliases from a single menu — reducing setup friction for daily workflows.",
        desc:
            "A simple Dart CLI tool to manage shell aliases on macOS and Linux. Create, list, update, activate, and deactivate your custom command shortcuts easily with a colorful, interactive menu.",
        tinyDesc: "Productivity",
      ),
      Project(
        title: "TinyExpr",
        category: "Open Source Package",
        tech: "Dart Package",
        link: "https://pub.dev/packages/tiny_expr",
        problem:
            "Dart projects needed a lightweight math expression evaluator with variable and function support, without pulling in heavy dependencies.",
        outcome:
            "Published a port of the TinyExpr C library to pub.dev with 500+ downloads, used across packages needing safe expression parsing.",
        desc: "Math expression evaluator ported from C. Supports variables, functions & precedence.",
        tinyDesc: "500+ Downloads",
      ),
      Project(
        title: "Simple Blogging App",
        category: "Full-Stack Mobile",
        tech: "Flutter, Node.js/Firebase",
        link: "https://github.com/shivanuj13/simple_blogger",
        problem:
            "Content creators needed a cross-platform blogging app with flexible backend options for rapid prototyping and production deployment.",
        outcome:
            "Delivered a Flutter app with authentication, CRUD posts, and swappable Node.js or Firebase backends — demonstrating end-to-end mobile product delivery.",
        desc: "Cross-platform blogging app with auth, CRUD posts and two backend options.",
      ),
    ],
  ),
  contributions: Contributions(
    list: [
      Contribution(
        project: "Flutter SDK",
        repository: "flutter/flutter",
        link: "https://github.com/flutter/flutter/pulls?q=+is%3Apr+author%3Ashivanuj13+",
        pullRequests: [
          ContributionPullRequest(
            number: "182910",
            title: "OutlineInputBorder: Fix label animation and gap rendering",
            status: "Open",
            date: "Feb 2026",
            link: "https://github.com/flutter/flutter/pull/182910",
            labels: ["framework", "f: material design"],
          ),
          ContributionPullRequest(
            number: "178526",
            title: "Fixed changing supportedLocales fails to update the locale",
            status: "Merged",
            date: "Nov 2025",
            link: "https://github.com/flutter/flutter/pull/178526",
            labels: ["framework"],
          ),
        ],
      ),
    ],
  ),
  skills: Skills(
    list: [
      Skill(
        category: "Mobile Engineering",
        description:
            "End-to-end mobile product development — from UI craft to platform integrations and performance tuning on iOS and Android.",
        skills: ["Dart", "Flutter", "Android SDK", "Jetpack Compose", "Kotlin"],
      ),
      Skill(
        category: "Architecture",
        description:
            "Designing systems that scale with product complexity — modular SDKs, server-driven UI, and clean separation of concerns.",
        skills: ["Server Driven UI", "Modular SDKs", "BLoC", "Clean Architecture"],
      ),
      Skill(
        category: "Tooling",
        description:
            "Creating developer tools and exploring emerging platforms that improve engineering velocity.",
        skills: ["MCP", "C++", "JavaScript", "Jaspr"],
      ),
    ],
  ),
);

int _completedYearsSince(DateTime start, DateTime end) {
  return (end.difference(start).inDays ~/ 365).clamp(0, 999);
}

class HeroStats {
  static final DateTime careerStart = DateTime(2023, 9, 1);

  final String projectsDelivered;
  final String coreStack;
  final String contribution;

  String get yearsExperience {
    final years = _completedYearsSince(careerStart, DateTime.now());
    return '$years+';
  }

  const HeroStats({
    required this.projectsDelivered,
    required this.coreStack,
    required this.contribution,
  });
}

class SocialLinks {
  final String linkedin;
  final String github;
  final String? twitter;

  const SocialLinks({
    required this.linkedin,
    required this.github,
    this.twitter,
  });
}

class Profile {
  final String name;
  final String title;
  final String heroLabel;
  final String heroHeadline;
  final String tagline;
  final String location;
  final String email;
  final String resumeLink;
  final SocialLinks social;

  const Profile({
    required this.name,
    required this.title,
    required this.heroLabel,
    required this.heroHeadline,
    required this.tagline,
    required this.location,
    required this.email,
    required this.resumeLink,
    required this.social,
  });
}

class Experiences {
  final List<Experience> list;

  const Experiences({required this.list});
}

class ExperienceLink {
  final String url;
  final String label;

  const ExperienceLink({required this.url, required this.label});
}

class ExperienceRole {
  final String role;
  final String date;
  final List<String> tech;
  final List<String> description;

  const ExperienceRole({
    required this.role,
    required this.date,
    required this.tech,
    required this.description,
  });
}

class Experience {
  final String company;
  final String? location;
  final String? date;
  final String? note;
  final String? role;
  final List<String>? tech;
  final List<String>? description;
  final List<ExperienceRole>? roles;
  final List<ExperienceLink>? links;

  const Experience({
    required this.company,
    this.location,
    this.date,
    this.note,
    this.role,
    this.tech,
    this.description,
    this.roles,
    this.links,
  });

  bool get isGrouped => roles != null && roles!.isNotEmpty;
}

class Projects {
  final List<Project> list;

  const Projects({required this.list});
}

class Project {
  final String title;
  final String category;
  final String tech;
  final String link;
  final String problem;
  final String outcome;
  final String desc;
  final String? tinyDesc;

  const Project({
    required this.title,
    required this.category,
    required this.tech,
    required this.link,
    required this.problem,
    required this.outcome,
    required this.desc,
    this.tinyDesc,
  });
}

class Contributions {
  final List<Contribution> list;

  const Contributions({required this.list});
}

class Contribution {
  final String project;
  final String repository;
  final String link;
  final List<ContributionPullRequest> pullRequests;

  const Contribution({
    required this.project,
    required this.repository,
    required this.link,
    required this.pullRequests,
  });
}

class ContributionPullRequest {
  final String number;
  final String title;
  final String status;
  final String date;
  final String link;
  final List<String> labels;

  const ContributionPullRequest({
    required this.number,
    required this.title,
    required this.status,
    required this.date,
    required this.link,
    this.labels = const [],
  });
}

class Skills {
  final List<Skill> list;

  const Skills({required this.list});
}

class Skill {
  final String category;
  final String description;
  final List<String> skills;

  const Skill({
    required this.category,
    required this.description,
    required this.skills,
  });
}
