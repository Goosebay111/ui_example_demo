import 'package:bmad_ui_example/constants/rewind_icon.dart';
import 'package:bmad_ui_example/decoration_builder/decorations/rewind_decoration.dart';

import '../object_builder.dart';

class RewindButton extends ObjectBuilder {
  RewindButton()
      : super(
          child: RewindIcon(),
          decorations: RewindDecoration(),
        );
}
