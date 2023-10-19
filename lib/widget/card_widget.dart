import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvOuS_Dum7fRFAW8Tu_4dwCw-Snjs4dK7mk8rFzorHp9hdWwKGW9s5GZ6T7OR6F3bJqtg&usqp=CAU',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'jhjkhkjhkjhkhkjhkjhhjjhjhhjjkjkkkhkjjkkjkjkhkkkjkhkhhgjhghghjghjghjgjhgjhgjgjhghjgjgj' *
                2,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'jhjkhkjhkjhkhkjhkjhhjjhjhhjjkjkkkhkjjkkjkjkhkkkjkhkhhgjhghghjghjghjgjhgjhgjgjhghjgjgj',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}