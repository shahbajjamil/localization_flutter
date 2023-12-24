import 'package:flutter/material.dart';
import 'package:localization_flutter_youtube/screen/model/model.dart';

import '../generated/l10n.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var groupValue = 'hi';
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.language),
      ),
      body: ListView.builder(
        itemCount: languageModel.length,
        itemBuilder: (context, index) {
          var item = languageModel[index];
          return RadioListTile(
            value: item.languageCode,
            groupValue: groupValue,
            title: Text(item.language),
            subtitle: Text(item.subLanguage),
            onChanged: (value) {},
          );
        },
      ),
    );
  }
}
