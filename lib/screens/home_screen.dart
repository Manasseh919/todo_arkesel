import 'package:flutter/material.dart';
import 'package:todoapp/utils/utils.dart';
import 'package:gap/gap.dart';
import 'package:todoapp/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "May 20, 2023",
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                    DisplayWhiteText(
                      text: "My Todo list",
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              top: 170,
              left: 0,
              right: 0,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: deviceSize.width,
                      height: deviceSize.height * 0.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colors.primaryContainer),
                      child: ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (ctx, index) {
                          return Text("Home");
                        },
                      ),
                    ),
                    Gap(20),
                   Text("Completed",
                    style: context.textTheme.headlineMedium,
                    ),
                    Gap(20),
                     Container(
                      width: deviceSize.width,
                      height: deviceSize.height * 0.2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colors.primaryContainer),
                      child: ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemBuilder: (ctx, index) {
                          return Text("Home");
                        },
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
