import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/app_styles.dart';

class ViewAll extends StatelessWidget {
  final String _bigText;
  const ViewAll({super.key, required bigText}) : _bigText = bigText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _bigText,
            style: AppStyles.head2,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "View All",
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
