import 'package:bmad_ui_example/neumorphic_objects/attributes/thumb_attributes.dart';
import '../decoration_builder.dart';

class ThumbDecoration extends DecorationBuilder {
  ThumbDecoration()
      : super(
          borderEffect: ThumbBorderEffect(),
          surfaceEffect: ThumbSurfaceEffect(),
          shadowEffect: ThumbShadowEffect(),
        );
}
