import 'package:flutter/material.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.cyan,
      onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            context: context,
            builder: (BuildContext context) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                  height: 550,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: TextField(
                            autocorrect: false,
                            enableSuggestions: false,
                            decoration: InputDecoration(
                                hintText: 'Subject', border: InputBorder.none),
                            autofocus: true,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const TextField(
                          autocorrect: false,
                          enableSuggestions: false,
                          decoration: InputDecoration(
                              hintText: 'Description',
                              border: InputBorder.none),
                          autofocus: true,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                icon: const Icon(Icons.send),
                                color: Colors.redAccent,
                                onPressed: () {}),
                          ],
                        ),
                      ]),
                ),
              );
            });
      },
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
