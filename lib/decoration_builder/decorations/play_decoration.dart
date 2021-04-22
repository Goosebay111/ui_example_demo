import 'package:bmad_ui_example/neumorphic_objects/attributes/pause_play_attributes.dart';
import '../decoration_builder.dart';

class PlayDecoration extends DecorationBuilder {
  PlayDecoration()
      : super(
          borderEffect: PlayBorderEffect(),
          surfaceEffect: PlaySurfaceEffect(),
          shadowEffect: PlayShadowEffect(),
        );
}
