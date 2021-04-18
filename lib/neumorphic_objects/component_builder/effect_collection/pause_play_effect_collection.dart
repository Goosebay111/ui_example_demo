import 'package:bmad_ui_example/neumorphic_objects/component_attributes/pause_play_attributes.dart';
import 'package:bmad_ui_example/ui_effects/effect_Collection.dart';

class PlayEffectCollection extends EffectCollection {
  PlayEffectCollection()
      : super(
          shapeEffect: PlayAttributes(),
          surfaceEffect: PlaySurfaceEffect(),
          shadowEffect: PlayShadowEffect(),
        );
}
