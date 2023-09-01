import 'package:flutter/material.dart';
import '../components/question_bank_title_nd_items.dart';
import '../widget/item_title_button.dart';

class QuestionBankScreen extends StatelessWidget {
  const QuestionBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Question Bank"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              QuestionBankTitleAndItems(
                title: "BCA (Tribhuvan University)",
                items: [
                  ItemTitleAndButton(
                    buttonTitle: "view",
                    itemTitle: "Ut omnis magnam.",
                    onPressed: () {},
                  ),
                  ItemTitleAndButton(
                    buttonTitle: "view",
                    itemTitle: "Aliquam ut.",
                    onPressed: () {},
                  ),
                  ItemTitleAndButton(
                    buttonTitle: "view",
                    itemTitle: "Officia molestiae voluptatem.",
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
