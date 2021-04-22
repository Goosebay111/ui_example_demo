import 'package:bmad_ui_example/neumorphic_objects/attributes/menu_attributes.dart';
import '../decoration_builder.dart';

class MenuDecoration extends DecorationBuilder {
  MenuDecoration()
      : super(
          borderEffect: MenuBorderEffect(),
          surfaceEffect: MenuSurfaceEffect(),
          shadowEffect: MenuShadowEffect(),
        );
}
