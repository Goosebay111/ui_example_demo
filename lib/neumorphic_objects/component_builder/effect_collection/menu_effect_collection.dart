import 'package:bmad_ui_example/neumorphic_objects/component_attributes/menu_attributes.dart';
import 'package:bmad_ui_example/ui_effects/effect_Collection.dart';

class MenuEffectCollection extends EffectCollection {
  MenuEffectCollection()
      : super(
          shapeEffect: MenuAttributes(),
          surfaceEffect: MenuSurfaceEffect(),
          shadowEffect: MenuShadowEffect(),
        );
}
