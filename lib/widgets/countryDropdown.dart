/*

import 'package:flutter/material.dart';

class CountryDropdowm extends StatelessWidget {
  final List<String> countries;
  final String country;
  final Function(String) onChanged;

  const CountryDropdowm({
     this.countries,
     this.country,
     this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        height: 40,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30)
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: country,
            items: countries.map((e) =>
                DropdownMenuItem(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 12,
                          child: Image.asset('images/${e.toLowerCase()}_tur.png',
                            height: 35,
                            width: 35,
                          ),
                        ),
                        //const SizedBox(width: 8,),
                        Text(
                          e,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ]
                  ),
                  value: e,
                ))
                .toList(),
            onChanged: onChanged,
          ),
        )
    );
  }
}

*/
