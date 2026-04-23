import 'package:flutter/material.dart';

class ResponderRatingDialog extends StatefulWidget {
  final ValueChanged<int> onSubmitRating;

  const ResponderRatingDialog({super.key, required this.onSubmitRating});

  @override
  State<ResponderRatingDialog> createState() => _ResponderRatingDialogState();
}

class _ResponderRatingDialogState extends State<ResponderRatingDialog> {
  int _stars = 5;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xFF1E1E1E),
      title: const Text('Rate Dispatch Response', style: TextStyle(color: Colors.white)),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(5, (index) {
          final isFilled = index < _stars;
          return IconButton(
            icon: Icon(isFilled ? Icons.star : Icons.star_border, color: Colors.amberAccent),
            onPressed: () => setState(() => _stars = index + 1),
          );
        }),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Skip', style: TextStyle(color: Colors.white54)),
        ),
        ElevatedButton(
          onPressed: () {
            widget.onSubmitRating(_stars);
            Navigator.pop(context);
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
