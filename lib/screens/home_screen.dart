import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/project_card.dart';
import 'package:flutter_portfolio/widgets/skill_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_portfolio/utils/methods.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollController = ScrollController();
    final GlobalKey _projectsKey = GlobalKey();
    final GlobalKey _skillsKey = GlobalKey();
    final GlobalKey _contactKey = GlobalKey();

    void scrollToSection(GlobalKey key) {
      final context = key.currentContext;
      if (context != null) {
        Scrollable.ensureVisible(context,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut);
      }
    }

    double screenWidth = MediaQuery.sizeOf(context).width;

    double topBarFontSize = 16;
    const description =
        "A student backend developer with experience in developing desktop and web applications using Java and Python. Skilled in designing and managing databases with MySQL and PostgreSQL, and building RESTful APIs. Proficient in a wide range of technologies, including JavaScript, TypeScript, and frameworks like NestJS, React, and Prisma.";
    const resumeLink =
        "https://drive.usercontent.google.com/download?id=1eAGQYCYeX1EAUfqQXHrgjD1f1JHSvR6-&export=download&authuser=1&confirm=t&uuid=44277e16-d1d7-4178-af12-f53d09dad674&at=AN_67v30qo_09wFui2s58hsQ6T7x:1729334205509";
    const githubLink = "https://github.com/adriannebulao";
    const linkedinLink = "https://www.linkedin.com/in/adriannebulao";
    const portfolioRepoLink =
        "https://github.com/adriannebulao/flutter_portfolio";

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 45, 0, 90),
                width: screenWidth * 0.58,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceBetween,
                  spacing: 20,
                  runSpacing: 10,
                  children: [
                    InkWell(
                      onTap: () async {
                        Methods().goToWebpage(portfolioRepoLink);
                      },
                      child: const Text(
                        "AB.",
                        style: TextStyle(
                            color: Color(0xff90A0D9),
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 25,
                      runSpacing: 10,
                      children: [
                        InkWell(
                          onTap: () {
                            scrollToSection(_projectsKey);
                          },
                          child: Text(
                            "projects",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xffBDBDDD),
                                fontSize: topBarFontSize,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            scrollToSection(_skillsKey);
                          },
                          child: Text(
                            "skills",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xffBDBDDD),
                                fontSize: topBarFontSize,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            scrollToSection(_contactKey);
                          },
                          child: Text(
                            "contact",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xffBDBDDD),
                                fontSize: topBarFontSize,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.wb_sunny,
                            color: Color(0xffBDBDDD),
                            size: 24,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const Wrap(
                    spacing: 10,
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        "Hi, I am ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xffCDCDFF),
                            fontSize: 60,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Adrianne Bulao.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xff90A0D9),
                            fontSize: 60,
                            fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const Text(
                    "A Back End Engineer.",
                    style: TextStyle(
                        color: Color(0xffCDCDFF),
                        fontSize: 32,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: screenWidth * .322,
                    child: const Text(
                      description,
                      style: TextStyle(
                        color: Color(0xffBDBDDD),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                          onPressed: () async {
                            await Methods().goToWebpage(resumeLink);
                          },
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0)),
                              side: const BorderSide(
                                width: 2,
                                color: Color(0xff90A0D9),
                              ),
                              padding: const EdgeInsets.all(20)),
                          child: const Text(
                            "resume",
                            style: TextStyle(
                              color: Color(0xff90A0D9),
                              fontSize: 16,
                            ),
                          )),
                      const SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () async {
                          await Methods().goToWebpage(githubLink);
                        },
                        icon: const FaIcon(
                          FontAwesomeIcons.github,
                          color: Color(0xffBDBDDD),
                          size: 25,
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            await Methods().goToWebpage(linkedinLink);
                          },
                          icon: const FaIcon(
                            FontAwesomeIcons.linkedin,
                            color: Color(0xffBDBDDD),
                            size: 20,
                          )),
                    ],
                  )
                ],
              ),
              Column(
                key: _projectsKey,
                children: const [
                  SizedBox(
                    height: 75,
                  ),
                  Text(
                    "PROJECTS",
                    style: TextStyle(
                        color: Color(0xffCDCDFF),
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: [
                      ProjectCard(
                          title: "Uniqclear Desktop Application",
                          description:
                              "Integrated business management system developed using Java with MySQL database for Software Engineering course.",
                          technologies: "Java   MySQL",
                          githubLink:
                              "https://github.com/RonBers/Legacy-Uniqclear-App",
                          link:
                              "https://github.com/RonBers/Legacy-Uniqclear-App"),
                      SizedBox(
                        width: 30,
                      ),
                      ProjectCard(
                          title: "QuicKeys Ecommerce Web Application",
                          description:
                              "Web application developed using React and Django with PostgreSQL database for Full-Stack Web Development course.",
                          technologies: "React   Django   PostgreSQL",
                          githubLink: "https://github.com/QuicKeys/quickeys",
                          link: "https://github.com/QuicKeys/quickeys"),
                      SizedBox(
                        width: 30,
                      ),
                      ProjectCard(
                          title: "SAMAHAN Website Backend",
                          description:
                              "Backend for SAMAHAN Website project developed using NestJS, Prisma, and Supabase with PostgreSQL database.",
                          technologies: "NestJS   Prisma  Supabase",
                          githubLink:
                              "https://github.com/SAMAHAN-Systems-Development/samahan-all-for-more-backend",
                          link:
                              "https://github.com/SAMAHAN-Systems-Development/samahan-all-for-more-backend"),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              Column(
                key: _skillsKey,
                children: [
                  const Text(
                    "SKILLS",
                    style: TextStyle(
                        color: Color(0xffCDCDFF),
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: screenWidth * .24,
                    child: const Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          SkillCard(skill: "Java"),
                          SkillCard(skill: "Python"),
                          SkillCard(skill: "JavaScript"),
                          SkillCard(skill: "React"),
                          SkillCard(skill: "Django"),
                          SkillCard(skill: "NestJS"),
                          SkillCard(skill: "MySQL"),
                          SkillCard(skill: "PostgreSQL"),
                          SkillCard(skill: "Prisma"),
                          SkillCard(skill: "Supabase"),
                          SkillCard(skill: "Git"),
                          SkillCard(skill: "Postman"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 75,
              ),
              Column(
                key: _contactKey,
                children: [
                  const Text(
                    "CONTACT",
                    style: TextStyle(
                        color: Color(0xffCDCDFF),
                        fontSize: 30,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0)),
                          side: const BorderSide(
                            width: 2,
                            color: Color(0xff90A0D9),
                          ),
                          padding: const EdgeInsets.all(20)),
                      child: InkWell(
                        onTap: () async {
                          await Methods()
                              .goToWebpage("mailto:amcbulao@gmail.com");
                        },
                        child: const Text(
                          "email me",
                          style: TextStyle(
                            color: Color(0xff90A0D9),
                            fontSize: 16,
                          ),
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
                child: InkWell(
                  onTap: () async {
                    await Methods().goToWebpage(
                        "https://github.com/adriannebulao/flutter_portfolio");
                  },
                  child: const Text(
                    "Created By Adrianne Bulao",
                    style: TextStyle(
                        color: Color(0xff90A0D9),
                        fontSize: 14,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
