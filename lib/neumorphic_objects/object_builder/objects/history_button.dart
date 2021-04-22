import 'package:bmad_ui_example/constants/history_icon.dart';
import 'package:bmad_ui_example/decoration_builder/decorations/history_decoration.dart';

import '../object_builder.dart';

class HistoryButton extends ObjectBuilder {
  HistoryButton()
      : super(
          child: HistoryIcon(),
          decorations: HistoryDecoration(),
        );
}
