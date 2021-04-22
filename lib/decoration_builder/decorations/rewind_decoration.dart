import 'package:bmad_ui_example/neumorphic_objects/attributes/rewind_attributes.dart';
import '../decoration_builder.dart';

class RewindDecoration extends DecorationBuilder {
  RewindDecoration()
      : super(
          borderEffect: RewindBorderEffect(),
          surfaceEffect: RewindSurfaceEffect(),
          shadowEffect: RewindShadowEffect(),
        );
}
