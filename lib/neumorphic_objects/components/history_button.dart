import 'package:bmad_ui_example/neumorphic_objects/collection_of_effects/history_effects.dart';
import 'package:bmad_ui_example/neumorphic_objects/element_builder/component_builder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HistoryButton extends ComponentBuilder {
  HistoryButton()
      : super(
          child: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Color(0xff818487).withOpacity(1.0),
            size: 13.0,
          ),
          effect: HistoryEffect(),
        );
}
