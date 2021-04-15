import 'package:bmad_ui_example/neumorphic_objects/object_attributes/pause_play_attributes.dart';
import 'package:bmad_ui_example/ui_properties/objectProperties.dart';

class PlayEffect extends Effect {
  PlayEffect()
      : super(
          shapeEffect: PlayAttributes(),
          surfaceEffect: PlaySurfaceEffect(),
          shadowEffect: PlayShadowEffect(),
        );
}
