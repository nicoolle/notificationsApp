import 'package:flutter/material.dart';
import 'package:make_it_app/style/app_sizes.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  final bool test = true;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: test ? 180 : 220),
      child: Card(
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.deepPurple),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              const Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                    size: 28,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   padding: const EdgeInsets.all(3),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(100),
                  //       border: Border.all(color: Colors.black45)),
                  //   child: const Icon(
                  //     Icons.shopping_bag_outlined,
                  //     size: 26,
                  //   ),
                  // ),

                  const TextWidget(defaultText: 'Time: ', data: '21:10'),
                  gapH12,
                  const TextWidget(defaultText: 'Message: ', data: 'Do this'),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ResponsiveButton(
                      text: 'Select triger 1',
                      onPressed: () {},
                    ),
                    ResponsiveButton(
                      text: 'Select triger 2',
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.defaultText, required this.data});

  final String defaultText;
  final String data;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: defaultText,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.black45),
        children: [
          TextSpan(
            text: data,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(minWidth: MediaQuery.of(context).size.width / 2 - 40),
      child: OutlinedButton(
        onPressed: onPressed(),
        child: Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.deepPurple),
        ),
      ),
    );
  }
}
