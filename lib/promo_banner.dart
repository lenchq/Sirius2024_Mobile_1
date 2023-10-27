import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SvgPicture.asset(
                "assets/banner-bg.svg",
                fit: BoxFit.cover,
              ),
            )),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: RichText(
                  text: TextSpan(
                    text: '',
                    children: [
                      TextSpan(
                        text: "Узнайте какое занятие ",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Color(0xFF9F9F9F),
                            fontFamily: 'Mont'
                        ),
                      ),
                      TextSpan(
                        text: "подойдет вашему ребёнку",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Color(0xFF272727),
                            fontFamily: 'Mont'
                        ),
                      ),
                    ]
                  )
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset("assets/woman.svg"),
            )
          ],
        ),
      ],
    );
  }
}
