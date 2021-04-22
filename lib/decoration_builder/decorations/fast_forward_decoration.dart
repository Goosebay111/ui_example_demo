import 'package:bmad_ui_example/neumorphic_objects/attributes/fast_forward_attributes.dart';

import '../decoration_builder.dart';

class FastForwardDecoration extends DecorationBuilder {
  FastForwardDecoration()
      : super(
          borderEffect: FastForwardBorderEffect(),
          surfaceEffect: FastForwardSurfaceEffect(),
          shadowEffect: FastForwardShadowEffect(),
        );
}
