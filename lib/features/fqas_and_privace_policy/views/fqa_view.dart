import 'package:booking_doctor/core/constants/app_colors.dart';
import 'package:booking_doctor/core/constants/app_styles.dart';
import 'package:flutter/material.dart';

// class FAQsView extends StatelessWidget {
//   const FAQsView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: Icon(Icons.arrow_back_ios_new),
//         ),
//         title: Text('FAQs', style: AppStyles.font24Regular(context)),
//       ),
//       body: Column(),
//     );
//   }
// }

class FAQScreen extends StatefulWidget {
  @override
  State<FAQScreen> createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  final List<Map<String, String>> faqs = [
    {
      "question": "What is this app used for?",
      "answer":
          "This app allows you to search for doctors, book appointments, and consult in person easily from your phone.",
    },
    {
      "question": "Is the app free to use?",
      "answer":
          "Yes, the app is free to download and use. Some services may have fees.",
    },
    {
      "question": "How can I find a doctor?",
      "answer":
          "You can use the search feature to look for doctors by specialty, name, or location.",
    },
    {
      "question": "Can I cancel my appointment?",
      "answer":
          "Yes, appointments can be canceled easily from your bookings page.",
    },
    {
      "question": "What payment are supported",
      "answer":
          "We support credit/debit cards, mobile wallets, and online banking depending on your region.",
    },
    {
      "question": "How do I edit my profile?",
      "answer":
          "Go to the Profile section and tap on Edit to update your details.",
    },
  ];
  late List<bool> expandedList = [];

  @override
  void initState() {
    super.initState();
    expandedList = List.filled(faqs.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        surfaceTintColor: AppColors.whiteColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, size: 18),
        ),
        title: Text(
          'FAQs',
          style: AppStyles.font24Regular(
            context,
          ).copyWith(color: AppColors.secondaryTextColor),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: faqs.length,
        itemBuilder: (context, index) {
          final isExpanded = expandedList[index];

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: AppColors.ligthGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Theme(
              data: Theme.of(
                context,
              ).copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                title: Text(
                  faqs[index]["question"]!,
                  style: AppStyles.font24Regular(
                    context,
                  ).copyWith(color: AppColors.secondaryTextColor),
                ),
                initiallyExpanded: isExpanded,
                onExpansionChanged: (expanded) {
                  setState(() {
                    expandedList[index] = expanded;
                  });
                },

                trailing: Icon(
                  isExpanded ? Icons.remove : Icons.add,
                  size: 26,

                  color: AppColors.secondaryTextColor,
                ),

                children: [
                  Divider(
                    color: AppColors.greyTextColor,
                    thickness: 1,
                    indent: 16,
                    endIndent: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    child: Text(
                      faqs[index]["answer"]!,
                      style: AppStyles.font16Meduim(
                        context,
                      ).copyWith(color: AppColors.greyTextColor),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
