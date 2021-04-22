import 'package:bmad_ui_example/decoration_builder/decorations/thumb_decoration.dart';
import '../object_builder.dart';

class ThumbButton extends ObjectBuilder {
  ThumbButton()
      : super(
          isThumb: true,
          decorations: ThumbDecoration(),
        );
}
