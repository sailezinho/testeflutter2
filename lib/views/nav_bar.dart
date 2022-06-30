import 'package:flutter/material.dart';
import 'package:myportfolio/language/language_controller.dart';
import 'package:myportfolio/views/about.dart';
import 'package:myportfolio/widgets/util/on_hover_image.dart';

import '../widgets/text_hover.dart';

final items = ["Português (pt-BR)", "English (en-US)"];
String currentItemSelected = "Português (pt-BR)";

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  State<DesktopNavbar> createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    );

    animation = Tween(begin: 150.0, end: 180.0).animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });

    super.initState();

    /* if (animation.isCompleted) {
      animationController.reverse();
    } else
      animationController.forward();*/
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () => null,
              child: HoverImage(
                image: "assets/images/logo.png",
              ),
            ),
            Row(
              children: <Widget>[
                TextHover(
                    text: currentItemSelected == "Português (pt-BR)"
                        ? "Início"
                        : "Home"),
                SizedBox(
                  width: 25,
                ),
                TextHover(
                    text: currentItemSelected == "Português (pt-BR)"
                        ? "Serviços"
                        : "Services"),
                SizedBox(
                  width: 25,
                ),
                TextHover(text: "Portfolio"),
                SizedBox(
                  width: 25,
                ),
                TextHover(
                    text: currentItemSelected == "Português (pt-BR)"
                        ? "Contato"
                        : "Contact"),
                SizedBox(
                  width: 25,
                ),
                DropdownButton<String>(
                  items: items.map((String dropDownStringItem) {
                    return DropdownMenuItem<String>(
                      value: dropDownStringItem,
                      child: Text(dropDownStringItem),
                    );
                  }).toList(),
                  value: currentItemSelected,
                  onChanged: (newValue) {
                    setState(() {
                      currentItemSelected = newValue!;
                      LanguageController.setAtualLanguage(currentItemSelected);
                      setState(() {});
                    });
                  },
                ),
                SizedBox(
                  width: 25,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  @override
  State<MobileNavbar> createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Image.asset("assets/images/logo.png", width: 120, height: 65),
          DropdownButton<String>(
            items: items.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),
            value: currentItemSelected,
            onChanged: (newValue) {
              setState(() {
                currentItemSelected = newValue!;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextHover(
                    text: currentItemSelected == "Português (pt-BR)"
                        ? "Início"
                        : "Home"),
                SizedBox(
                  width: 15,
                ),
                TextHover(
                    text: currentItemSelected == "Português (pt-BR)"
                        ? "Serviços"
                        : "Services"),
                SizedBox(
                  width: 15,
                ),
                TextHover(text: "Portfolio"),
                SizedBox(
                  width: 15,
                ),
                TextHover(
                    text: currentItemSelected == "Português (pt-BR)"
                        ? "Contato"
                        : "Contact"),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
