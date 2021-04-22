import 'package:bmad_ui_example/constants/menu_icon.dart';
import 'package:bmad_ui_example/decoration_builder/decorations/menu_decoration.dart';
import '../object_builder.dart';

class MenuButton extends ObjectBuilder {
  MenuButton()
      : super(
          child: MenuIcon(),
          decorations: MenuDecoration(),
        );
}
