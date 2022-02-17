import 'package:custody_angel/views/global/widgets/default_page.dart';
import 'package:flutter/material.dart';

class OracoesPage extends DefaultPage {
  OracoesPage({
    Key? key,
  }) : super(
          key: key,
          body: Column(
            children: const [
              Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.')
            ],
          ),
          title: 'Oração',
          titleFontSize: 20,
        );
  
}
