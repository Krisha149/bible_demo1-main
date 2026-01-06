// import 'package:flutter/material.dart';
//
// class GenesisGridCard extends StatelessWidget {
//   const GenesisGridCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       crossAxisCount: 4,
//       shrinkWrap: true,
//       physics: const NeverScrollableScrollPhysics(),
//       children: List<Widget>.generate(32, (index) {
//         return GridTile(
//           child: Container(
//             height: 20,
//             width: 20,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.grey),
//               borderRadius: BorderRadius.all(Radius.circular(10))
//             ),
//             child: Card(
//               color: Colors.blue.shade200,
//               child: Center(child: Text('$index')),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }

import 'package:flutter/material.dart';

class GenesisGridCard extends StatelessWidget {
  final Function(int index) onTap;

  const GenesisGridCard({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(32, (index) {
        return GestureDetector(
          onTap: () => onTap(index),
          child: Container(
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Card(
              color: Colors.blue.shade200,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  '${index + 1}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

