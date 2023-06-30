import 'package:flutter/material.dart';
import 'package:blur/blur.dart';

class MainTransparentTop extends StatelessWidget {
  const MainTransparentTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TransparentBackgroundTop()),
    );
  }
}

class MainTransparent extends StatelessWidget {
  const MainTransparent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.grey.shade700),
          borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: TransparentBackgroundMain()),
    );
  }
}

class TransparentBackgroundMain extends StatefulWidget {
  const TransparentBackgroundMain({super.key});

  @override
  State<TransparentBackgroundMain> createState() =>
      _TransparentBackgroundMainState();
}

class _TransparentBackgroundMainState extends State<TransparentBackgroundMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.7)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                        width: double.infinity,
                        height: double.maxFinite,
                        child: CircleWithBorder())),
                Positioned.fill(
                  top: 40,
                  bottom: 40,
                  left: 40,
                  right: 40,
                  child: SizedBox(
                    // width: double.infinity,
                    // height: double.maxFinite,
                    child: CircleWithBorder1(),
                  ),
                ),
                Positioned.fill(
                  child: Image.network(
                      'https://www.pngmart.com/files/22/Elon-Musk-PNG.png'),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.network(
                'https://www.pngmart.com/files/22/Elon-Musk-PNG.png'),
          ),
          Expanded(
            flex: 2,
            child: Image.network(
                'https://www.pngmart.com/files/22/Elon-Musk-PNG.png'),
          ),
        ],
      ),
    )
        //
        .frosted(
      frostColor: Colors.white.withOpacity(0.1),
      blur: 0.1,
    );
  }
}

class TransparentBackgroundTop extends StatefulWidget {
  const TransparentBackgroundTop({super.key});

  @override
  State<TransparentBackgroundTop> createState() =>
      _TransparentBackgroundTopState();
}

class _TransparentBackgroundTopState extends State<TransparentBackgroundTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.8)),
      child: Center(
        child: Text(
          'https://dribbble.com/stories/2023/06/14/spatial_ui_design?utm_campaign=2023-06-21&utm_medium=email&utm_source=insider-20230621',
          style: TextStyle(color: Colors.white),
        ),
      ),
    ).frosted(
      frostColor: Colors.white.withOpacity(0.1),
      blur: 2.0,
    );
  }
}

class CircleWithBorder extends StatelessWidget {
  const CircleWithBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.shade700,
          width: 1.0,
        ),
      ),
      child: CircleAvatar(
        radius: double.maxFinite,
        backgroundColor: Colors.grey.withOpacity(0.1),
      ),
    );
  }
}

class CircleWithBorder1 extends StatefulWidget {
  CircleWithBorder1({super.key});

  @override
  State<CircleWithBorder1> createState() => _CircleWithBorder1State();
}

class _CircleWithBorder1State extends State<CircleWithBorder1> {
  Color borderColor = Colors.grey.shade700;
  Color mainColor = Colors.grey.withOpacity(0.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
      ),
      child: CircleAvatar(
        radius: double.maxFinite,
        backgroundColor: mainColor,
      ),
    );
  }
}
