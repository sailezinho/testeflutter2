import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';
import 'package:myportfolio/language/language_controller.dart';
import 'package:myportfolio/views/nav_bar.dart';
import 'package:myportfolio/widgets/button_hover.dart';

class AboutView extends StatefulWidget {
  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 100,
              ),
              Text(
                "HELLO",
                style: subTitleStyle,
              ),
              Text("I'M ELIAS ZAVAN", style: titleStyle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Text(
                  LanguageController.atualLanguage ==
                          LanguageController.getDefault()
                      ? "Hi, my name is Elias, better known as SaileZ. \nI am a programmer with talent and passion in programming, from the age of 8, I entered the magical world of programming, and I loved it. I've been developing minecraft plugins for over 4 years, and I really got into the market about 2 years ago. I am innovative and creative with my projects, I always aim to provide my customers with products of extraordinary quality, with maximum dedication. I always have full transparency with my products, showing the process of create from the beginning to the end. I have a lot of creative and cool projects, well optimized. People come to me when there is no one who can have as much dedication and speed in delivery as I do. Clients come to me when another programmer doesn't do the kind of projects I do."
                      : "Olá, meu nome é Elias, mais conhecido como SaileZ. \nSou programador com talento e paixão em programação, desde os 8 anos de idade entrei no mundo mágico da programação, e adorei. Eu tenho desenvolvido plugins de minecraft por mais de 4 anos, e eu realmente entrei no mercado cerca de 2 anos atrás. Sou inovador e criativo com os meus projetos, procuro sempre proporcionar aos meus clientes produtos de extraordinária qualidade, com a máxima dedicação. Sempre tenho total transparência com meus produtos, mostrando o processo de criação do início ao fim. Tenho muitos projetos criativos e legais, bem otimizados. As pessoas me procuram quando não há ninguém que possa ter tanta dedicação e rapidez na entrega quanto eu. Os clientes vêm até mim quando outro programador não faz o tipo de projeto que eu faço.",
                  style: descriptionStyle,
                ),
              ),
              Row(
                children: [
                  ButtonHover(
                      text: Text(
                        "SEE MY WORK",
                        style: textButtonStyle,
                      ),
                      hoverColor: Colors.black87,
                      normalColor: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  ButtonHover(
                      text: Text(
                        "LET'S WORK TOGETHER",
                        style: textButtonStyle,
                      ),
                      hoverColor: Colors.black87,
                      normalColor: Colors.black)
                ],
              )
            ],
          ),
        ),
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Image.asset(
            "assets/lp_image.png",
            width: width / 1.5,
            height: width / 1.5,
          ),
        ),
      )
    ];
  }

  List<Widget> pageChildrenMobile(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 100,
              ),
              Text(
                "HELLO",
                style: subTitleStyle,
              ),
              Text("I'M ELIAS ZAVAN", style: titleStyle),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Text(
                  LanguageController.atualLanguage ==
                          LanguageController.getDefault()
                      ? "Hi, my name is Elias, better known as SaileZ. \nI am a programmer with talent and passion in programming, from the age of 8, I entered the magical world of programming, and I loved it. I've been developing minecraft plugins for over 4 years, and I really got into the market about 2 years ago. I am innovative and creative with my projects, I always aim to provide my customers with products of extraordinary quality, with maximum dedication. I always have full transparency with my products, showing the process of create from the beginning to the end. I have a lot of creative and cool projects, well optimized. People come to me when there is no one who can have as much dedication and speed in delivery as I do. Clients come to me when another programmer doesn't do the kind of projects I do."
                      : "Olá, meu nome é Elias, mais conhecido como SaileZ. \nSou programador com talento e paixão em programação, desde os 8 anos de idade entrei no mundo mágico da programação, e adorei. Eu tenho desenvolvido plugins de minecraft por mais de 4 anos, e eu realmente entrei no mercado cerca de 2 anos atrás. Sou inovador e criativo com os meus projetos, procuro sempre proporcionar aos meus clientes produtos de extraordinária qualidade, com a máxima dedicação. Sempre tenho total transparência com meus produtos, mostrando o processo de criação do início ao fim. Tenho muitos projetos criativos e legais, bem otimizados. As pessoas me procuram quando não há ninguém que possa ter tanta dedicação e rapidez na entrega quanto eu. Os clientes vêm até mim quando outro programador não faz o tipo de projeto que eu faço.",
                  style: descriptionStyle,
                ),
              ),
              ButtonHover(
                  text: Text(
                    "SEE MY WORK",
                    style: textButtonStyle,
                  ),
                  hoverColor: Colors.black87,
                  normalColor: Colors.black),
              SizedBox(
                height: 10,
              ),
              ButtonHover(
                  text: Text(
                    "LET'S WORK TOGETHER",
                    style: textButtonStyle,
                  ),
                  hoverColor: Colors.black87,
                  normalColor: Colors.black)
            ],
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildrenMobile(constraints.biggest.width),
          );
        }
      },
    );
  }
}
