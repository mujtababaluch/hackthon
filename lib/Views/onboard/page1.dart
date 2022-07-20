import 'package:flutter/material.dart';
import 'package:hackthon/Constraint.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/onboard1.png'), fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
          SizedBox(
            height: 50,
            width: 50,
            child: Image.asset('assets/Vector.png'),
          ),
          const Spacer(),
          myContainer(),
          
        ],
      ),
    );
  }
}

class myContainer extends StatelessWidget {
  // const MyWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 120),
      height: 250,
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text("NO",
                    style: TextStyle(fontSize: 22, color: Colors.white)),
              ),
              Text("1",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
          Text("Featured",
              style: TextStyle(
                fontSize: 24,
                color: bg,
                fontWeight: FontWeight.w500,
              )),
          const Text("Tailored",
              style: TextStyle(
                fontSize: 51.8421,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              )),
          RichText(
            text: const TextSpan(
              // Note: Styles for TextSpans must be explicitly defined.
              // Child text spans will inherit styles from parent
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: 'Jennifer Kingsley ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                TextSpan(
                    text: 'exploring the new range of winter fashion wear'),
              ],
            ),
          ),
          Container(
            height: 55,
            width: 318,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3),
                borderRadius: BorderRadius.circular(10)),
            child: const Center(
              child: Text("Shop Now",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
