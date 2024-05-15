import 'package:dndapp/color_scheme.dart';
import 'package:dndapp/models/ficha_model.dart';
import 'package:dndapp/models/monster_model.dart';
import 'package:flutter/material.dart';

class FichaCard extends StatefulWidget {
  final Monster ficha;
  const FichaCard({super.key, required this.ficha});

  @override
  State<FichaCard> createState() => _FichaCardState();
}

class _FichaCardState extends State<FichaCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black54,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      widget.ficha.iconPath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              title: Text(widget.ficha.name),
              subtitle: Text(
                'CD: ${widget.ficha.classDificulty.toString()}  Vida: ${widget.ficha.health.toString()}',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                style: TextStyle(color: Colors.black.withOpacity(0.6)),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.edit),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'EDITAR',
                          style: TextStyle(
                            color: Color(0xFF6200EE),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Perform some action
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.delete),
                      Padding(
                        padding: EdgeInsets.only(left: 6),
                        child: Text(
                          'EXCLUIR',
                          style: TextStyle(
                            color: Color(0xFF6200EE),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                clipBehavior: Clip.antiAlias,
                child: Image.asset(
                  widget.ficha.iconPath,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
