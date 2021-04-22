import 'package:bmad_ui_example/constants/fast_foward_icon.dart';
import 'package:bmad_ui_example/decoration_builder/decorations/fast_forward_decoration.dart';
import '../object_builder.dart';

class FastForwardButton extends ObjectBuilder {
  FastForwardButton()
      : super(
          child: FastForwardIcon(),
          decorations: FastForwardDecoration(),
        );
}
