import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/attributes/thumb_attributes.dart';
import '../object_builder.dart';

class ThumbButton extends ComponentBuilder {
  ThumbButton()
      : super(
          isThumb: true,
          decorations: DecorationBuilder(
            borderEffect: ThumbBorderEffect(),
            surfaceEffect: ThumbSurfaceEffect(),
            shadowEffect: ThumbShadowEffect(),
          ),
        );
}
