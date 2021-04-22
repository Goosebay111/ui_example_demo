import 'package:bmad_ui_example/decoration_builder/decoration_builder.dart';
import 'package:bmad_ui_example/neumorphic_objects/component_attributes/scrubber_thumb_attributes.dart';
import 'package:bmad_ui_example/neumorphic_objects/ui_elements/component_builder.dart';

class ThumbButton extends ComponentBuilder {
  ThumbButton()
      : super(
          isThumb: true,
          decorations: DecorationBuilder(
            borderEffect: ThumbAttributes(),
            surfaceEffect: ThumbSurfaceEffect(),
            shadowEffect: ThumbShadowEffect(),
          ),
        );
}