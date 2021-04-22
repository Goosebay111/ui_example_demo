import 'package:bmad_ui_example/constants/pause_icon.dart';
import 'package:bmad_ui_example/decoration_builder/decorations/play_decoration.dart';
import '../object_builder.dart';

class PausePlayButton extends ObjectBuilder {
  PausePlayButton()
      : super(
          child: PauseIcon(),
          decorations: PlayDecoration(),
        );
}
