import 'package:flutter/material.dart';
import 'package:ticket_app/core/res/app_styles.dart';
import 'package:ticket_app/core/widgets/app_layout_builder_widget.dart';

import 'big_dot.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: size.width * 0.85,
          height: 189,
          child: Container(
            margin: const EdgeInsets.only(right: 16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppStyles.ticketBlue,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("NYC",
                              style: AppStyles.head3.copyWith(color: Colors.white)),
                          Expanded(child: Container()),
                          const BigDot(),
                          Expanded(
                              child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(randomDivider: 6),
                              ),
                              Center(
                                  child: Transform.rotate(
                                      angle: 1.57,
                                      child: const Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      ))),
                            ],
                          )),
                          const BigDot(),
                          Expanded(child: Container()),
                          Text("LDN",
                              style: AppStyles.head3.copyWith(color: Colors.white))
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text("New-York",
                              style: AppStyles.head3.copyWith(color: Colors.white)),
                          Expanded(child: Container()),
                          Text("8H 30M",
                              style: AppStyles.head3.copyWith(color: Colors.white)),
                          Expanded(child: Container()),
                          Text("London",
                              style: AppStyles.head3.copyWith(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(21),
                        bottomRight: Radius.circular(21)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("NYC",
                              style: AppStyles.head3.copyWith(color: Colors.white)),
                          Expanded(child: Container()),
                          const BigDot(),
                          Expanded(
                              child: Stack(
                            children: [
                              const SizedBox(
                                height: 24,
                                child: AppLayoutBuilderWidget(randomDivider: 6),
                              ),
                              Center(
                                  child: Transform.rotate(
                                      angle: 1.57,
                                      child: const Icon(
                                        Icons.local_airport_rounded,
                                        color: Colors.white,
                                      ))),
                            ],
                          )),
                          const BigDot(),
                          Expanded(child: Container()),
                          Text("LDN",
                              style: AppStyles.head3.copyWith(color: Colors.white))
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        children: [
                          Text("New-York",
                              style: AppStyles.head3.copyWith(color: Colors.white)),
                          Expanded(child: Container()),
                          Text("8H 30M",
                              style: AppStyles.head3.copyWith(color: Colors.white)),
                          Expanded(child: Container()),
                          Text("London",
                              style: AppStyles.head3.copyWith(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
