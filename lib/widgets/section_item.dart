import 'package:fl_tech_rescue/models/section.dart';
import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    super.key,
    required this.section,
    required this.onSelectSection,
  });

  final Section section;
  final void Function(Section section) onSelectSection;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: () {
          onSelectSection(section);
        },
        child: Stack(
          children: [
            Image(
              image: AssetImage(section.imagePath),
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
            Positioned(
              top: 0,
              bottom: 0,
              left: 100,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    Colors.black12.withOpacity(1),
                    Colors.blueGrey.shade500.withOpacity(0.9),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
                padding:
                    // const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                    const EdgeInsets.only(top: 35, left: 15),
                child: Text(
                  section.title,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis, // Very long text ...
                  style: const TextStyle(
                    fontSize: 18,
                    // fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
