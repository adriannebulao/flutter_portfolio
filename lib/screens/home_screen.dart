import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/project_card.dart';
import 'package:flutter_portfolio/widgets/skill_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;

    double topBarFontSize = 16;

    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: SizedBox(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(400, 50, 400, 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "AB.",
                      style: TextStyle(
                          color: Color(0xff90A0D9),
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Row(
                      children: [
                        Text(
                          "projects",
                          style: TextStyle(
                              color: const Color(0xffBDBDDD),
                              fontSize: topBarFontSize,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          "skills",
                          style: TextStyle(
                              color: const Color(0xffBDBDDD),
                              fontSize: topBarFontSize,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Text(
                          "contact",
                          style: TextStyle(
                              color: const Color(0xffBDBDDD),
                              fontSize: topBarFontSize,
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                WidgetStateProperty.all(Colors.transparent),
                          ),
                          child: const Icon(
                            Icons.wb_sunny,
                            color: Color(0xffBDBDDD),
                            size: 25,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, I am ",
                        style: TextStyle(
                            color: Color(0xffCDCDFF),
                            fontSize: 60,
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Adrianne Bulao.",
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
                      "Adipisicing sit fugit ullam unde aliquid sequi Facilis soluta facilis perspiciatis corporis nulla aspernatur. Autem eligendi rerum delectus modi quisquam? Illo ut quasi nemo ipsa cumque perspiciatis! Maiores minima consectetur.",
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
                          onPressed: () {},
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
                        width: 15,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.github,
                        color: Color(0xffBDBDDD),
                        size: 25,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      const FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: Color(0xffBDBDDD),
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
              const Column(
                children: [
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ProjectCard(
                          title: "Project 1",
                          description:
                              "Amet asperiores et impedit aliquam consectetur? Voluptates sed a nulla ipsa officia et esse aliquam",
                          technologies: "SASS   Typescript   React",
                          githubLink:
                              "https://github.com/RonBers/Legacy-Uniqclear-App",
                          link:
                              "https://github.com/RonBers/Legacy-Uniqclear-App"),
                      SizedBox(
                        width: 30,
                      ),
                      ProjectCard(
                          title: "Project 2",
                          description:
                              "Amet asperiores et impedit aliquam consectetur? Voluptates sed a nulla ipsa officia et esse aliquam",
                          technologies: "SASS   Typescript   React",
                          githubLink: "https://github.com/QuicKeys/quickeys",
                          link: "https://github.com/QuicKeys/quickeys"),
                      SizedBox(
                        width: 30,
                      ),
                      ProjectCard(
                          title: "Project 3",
                          description:
                              "Amet asperiores et impedit aliquam consectetur? Voluptates sed a nulla ipsa officia et esse aliquam",
                          technologies: "SASS   Typescript   React",
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
                    width: screenWidth * .22,
                    child: const Center(
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 15,
                        runSpacing: 15,
                        children: [
                          SkillCard(skill: "HTML"),
                          SkillCard(skill: "CSS"),
                          SkillCard(skill: "JavaScript"),
                          SkillCard(skill: "TypeScript"),
                          SkillCard(skill: "React"),
                          SkillCard(skill: "Redux"),
                          SkillCard(skill: "SASS"),
                          SkillCard(skill: "Material UI"),
                          SkillCard(skill: "Git"),
                          SkillCard(skill: "CI/CD"),
                          SkillCard(skill: "Jest"),
                          SkillCard(skill: "Enzyme"),
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
                      child: const Text(
                        "email me",
                        style: TextStyle(
                          color: Color(0xff90A0D9),
                          fontSize: 16,
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 100, 0, 50),
                child: const Text(
                  "Created By Adrianne Bulao",
                  style: TextStyle(
                      color: Color(0xff90A0D9),
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
