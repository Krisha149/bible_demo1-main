import 'package:flutter/material.dart';
import '../model/zip_code_model.dart';

class ZipCodeCardWidget extends StatefulWidget {
  final String selectedZip;
  final Function(String) onTap;

  const ZipCodeCardWidget({
    super.key,
    required this.selectedZip,
    required this.onTap,
  });
  @override
  State<ZipCodeCardWidget> createState() => _ZipCodeCardWidgetState();
}


class _ZipCodeCardWidgetState extends State<ZipCodeCardWidget>  {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(zipCode.length, (index) {
        final item = zipCode[index];
        final isSelected = widget.selectedZip == item['code'];

        return GestureDetector(
          onTap: () => setState(() {
            widget.onTap(item['code']);
          }),
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: MediaQuery.of(context).size.height * 0.06,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: isSelected ? Color(0xFFF9A13D) : Colors.grey,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: isSelected ? Color(0xFFF9A13D) : Colors.black,
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.03),
                  Expanded(child: Text(item['code'])),
                  if (isSelected)
                    Icon(
                      Icons.check_circle,
                      color: Color(0xFFF9A13D),
                    ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
