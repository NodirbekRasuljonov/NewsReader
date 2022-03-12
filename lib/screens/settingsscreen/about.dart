import 'package:flutter/material.dart';
import 'package:newsreader/core/constants/colorconstants.dart';

class About {
  static Scaffold aboutpage(BuildContext context, bool isdark) {
    return Scaffold(
      backgroundColor: isdark ? ScaffoldColor.dark : ScaffoldColor.ligth,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: isdark
                ? SettingsPageColor.lightcolor
                : SettingsPageColor.textColor,
          ),
        ),
        title: Text(
          'About',
          style: TextStyle(
              color: isdark
                  ? SettingsPageColor.lightcolor
                  : SettingsPageColor.textColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a congue massa, nec sollicitudin sem. Ut eu dolor id orci euismod vestibulum ac sit amet ex. Quisque tristique nibh velit. Integer finibus porttitor eros, quis tempor lorem malesuada eget. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam augue nibh, laoreet ac lobortis sed, lacinia id magna. In magna ligula, dapibus hendrerit feugiat eget, pulvinar a purus. In sit amet ipsum mi. Nulla sodales dolor eu turpis sodales tempus. Duis feugiat ornare arcu vel feugiat.

    Morbi dapibus consectetur velit, vitae convallis lorem pulvinar in. Vestibulum ut consequat diam. Nunc aliquet posuere nisl, eget fringilla libero auctor at. Vestibulum at dui ac metus cursus semper ut ac ex. Phasellus aliquam gravida tincidunt. Curabitur molestie urna nulla, eget commodo est sagittis in. Nunc nec posuere nisl, non pretium felis. Phasellus lacinia, diam et ultricies convallis, odio justo aliquet enim, sit amet pulvinar tortor enim vel velit. Vivamus ornare volutpat mauris, sagittis rhoncus felis auctor et. Sed egestas est sit amet ipsum euismod luctus ut sed mauris.

    Fusce a nunc cursus, dignissim ligula eu, faucibus nisi. Quisque suscipit felis ac nisl sodales varius. Morbi enim felis, convallis id tempor eget, elementum sed nibh. Aliquam erat volutpat. Nunc non vulputate eros. Vivamus condimentum magna quis ante volutpat gravida. Praesent nec sollicitudin erat, in faucibus metus. Nulla a magna vulputate velit commodo faucibus. Curabitur sollicitudin ligula in tincidunt feugiat. Integer vitae ex pretium, cursus turpis vel, faucibus nibh. Suspendisse fringilla, arcu a dapibus consequat, sapien ligula semper arcu, ac volutpat lacus ex sit amet nunc. Donec lorem neque, faucibus in lobortis et, rutrum eget sapien.

    Sed ullamcorper felis vitae nisi imperdiet hendrerit sit amet ac risus. In sed ex imperdiet, placerat felis in, mollis turpis. Vestibulum et ex ligula. In sodales purus ut quam congue blandit. Sed et mauris at dui egestas congue quis eu lorem. Maecenas et tempor orci. Vivamus id purus ut purus laoreet tincidunt. Nunc non libero nec enim hendrerit tempor nec sed nunc. Sed fringilla accumsan rutrum. Donec bibendum lacinia venenatis. Praesent ultrices at risus ut maximus. Fusce ultricies nulla quam, a fringilla justo convallis vitae. Etiam in ipsum nec mi congue semper ut non ante. Fusce nec justo fringilla, interdum orci sit amet, feugiat dui. Curabitur in lectus tellus. Nam sed magna purus.

    Proin nec nunc enim. Sed mattis, urna a scelerisque convallis, nunc magna maximus nisl, at sagittis justo turpis at nisl. Suspendisse tristique quis nunc sed efficitur. Maecenas at vestibulum nulla. Nulla volutpat dui nisl, ut condimentum lacus consequat ac. Vestibulum eros turpis, euismod ac porttitor eu, sodales consequat arcu. Vestibulum mollis faucibus vehicula. Nulla vel accumsan lectus, quis egestas lectus. Vestibulum fringilla nibh vel est dapibus, in semper neque fringilla. Cras et congue nunc. Duis sodales massa ac metus blandit ultrices. Sed blandit viverra nulla in efficitur.""",
            style: TextStyle(
                color: isdark
                    ? SettingsPageColor.lightcolor
                    : SettingsPageColor.textColor),
          ),
        ),
      ),
    );
  }
}
