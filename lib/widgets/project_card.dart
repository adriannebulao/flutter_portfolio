import 'package:flutter/material.dart';
import 'package:flutter_portfolio/utils/methods.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String technologies;
  final String githubLink;
  final String link;

  const ProjectCard(
      {super.key,
      required this.title,
      required this.description,
      required this.technologies,
      required this.githubLink,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 340,
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
      decoration: BoxDecoration(
        color: const Color(0xff23283E),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
                color: Color(0xffCDCDFF),
                fontSize: 23,
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Color(0xffBDBDDD), fontSize: 16),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            technologies,
            style: const TextStyle(color: Color(0xffCDCDFF)),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () async {
                    await Methods().goToWebpage(githubLink);
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.github,
                    color: Color(0xffBDBDDD),
                  )),
              const SizedBox(
                width: 8,
              ),
              IconButton(
                  onPressed: () async {
                    await Methods().goToWebpage(link);
                  },
                  icon: const Icon(
                    Icons.open_in_new_outlined,
                    color: Color(0xffBDBDDD),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
