class DataModel {
  final Profile profile;
  final Experiences experiences;
  final Projects projects;
  final Skills skills;

  const DataModel({
    required this.profile,
    required this.experiences,
    required this.projects,
    required this.skills,
  });
}

/// Instantiate one global data object
const data = DataModel(
  profile: Profile(
    name: "Anuj Kumar",
    title: "SDE 1 (Mobile) | Flutter Specialist",
    tagline: "Crafting scalable mobile experiences with Server Driven Architecture & Modular SDKs.",
    location: "Bangalore, India",
    email: "anuj.pussgrc@gmail.com",
    resumeLink: "https://drive.google.com/file/d/1R_P4aCJYRoHktbQo3-bYdydi2xB7xU5p/view?usp=drive_link",
    social: SocialLinks(
      linkedin: "https://linkedin.com/in/shivanuj13",
      github: "https://github.com/shivanuj13",
      twitter: "https://x.com/return_anuj",
    ),
  ),
  experiences: Experiences(
    list: [
      Experience(
        company: "PowerUp Money",
        role: "SDE 1 (Mobile)",
        date: "Jul 2025 – Present",
        location: "Bangalore, India",
        tech: ["Flutter", "Server Driven UI", "Fintech"],
        description: [
          "Developing the Flutter App for goal-based investing, enabling users to invest better.",
          "Architecting the application with Server Driven UI.",
          "Building MF Buy/Sell journeys.",
        ],
      ),
      Experience(
        company: "LikeMinds",
        role: "SDE 1 (Mobile)",
        date: "Sep 2023 – Jun 2024",
        location: "Gurugram, India",
        tech: ["Flutter BLoC", "Dio", "Hive", "GenAI"],
        description: [
          "Enabled real-time messaging and media sharing.",
          "Improved SDK documentation to reduce onboarding time.",
        ],
      ),
      Experience(
        company: "LikeMinds",
        role: "Flutter Developer Intern",
        date: "Sep 2023 – Jun 2024",
        location: "Gurugram, India",
        tech: ["GetIt", "Amazon S3", "Firebase"],
        description: [
          "Implemented real-time messaging and media features.",
          "Improved SDK documentation.",
        ],
      ),
    ],
  ),
  projects: Projects(
    list: [
      Project(
        title: "Easy Alias CLI",
        tech: "Dart CLI",
        tinyDesc: "Productivity",
        link: "https://github.com/shivanuj13/easy_alias",
        desc:
            "A simple Dart CLI tool to manage shell aliases on macOS and Linux. Create, list, update, activate, and deactivate your custom command shortcuts easily with a colorful, interactive menu.",
      ),
      Project(
        title: "TinyExpr",
        tech: "Dart Package",
        tinyDesc: "500+ Downloads",
        link: "https://pub.dev/packages/tiny_expr",
        desc: "Math expression evaluator ported from C. Supports variables, functions & precedence.",
      ),
      Project(
        title: "Simple Blogging App",
        tech: "Flutter, Node.js/Firebase",
        link: "https://github.com/shivanuj13/simple_blogger",
        desc: "Cross-platform blogging app with auth, CRUD posts and two backend options.",
      ),
    ],
  ),
  skills: Skills(
    list: [
      Skill(category: "Languages", skills: ["Dart", "Kotlin", "C++", "JavaScript"]),
      Skill(category: "Frameworks", skills: ["Flutter", "Android SDK", "Jetpack Compose", "Node.js"]),
      Skill(category: "Tools & Others", skills: ["Firebase", "MongoDB", "Git", "MCP"]),
    ],
  ),
);

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
  final String tagline;
  final String location;
  final String email;
  final String resumeLink;
  final SocialLinks social;

  const Profile({
    required this.name,
    required this.title,
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

class Experience {
  final String company;
  final String role;
  final String date;
  final String location;
  final List<String> tech;
  final List<String> description;

  const Experience({
    required this.company,
    required this.role,
    required this.date,
    required this.location,
    required this.tech,
    required this.description,
  });
}

class Projects {
  final List<Project> list;

  const Projects({required this.list});
}

class Project {
  final String title;
  final String tech;
  final String link;
  final String desc;
  final String? tinyDesc;

  const Project({
    required this.title,
    required this.tech,
    required this.link,
    required this.desc,
    this.tinyDesc,
  });
}

class Skills {
  final List<Skill> list;

  const Skills({required this.list});
}

class Skill {
  final String category;
  final List<String> skills;

  const Skill({
    required this.category,
    required this.skills,
  });
}
