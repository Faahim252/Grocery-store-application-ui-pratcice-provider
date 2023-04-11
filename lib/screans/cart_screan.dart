import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocerystore/models/cart_model.dart';
import 'package:provider/provider.dart';

class CartScrean extends StatelessWidget {
  const CartScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Consumer<CartModel>(builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Cart',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.cartitems.length,
                padding: const EdgeInsets.all(12.0),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      child: ListTile(
                        leading: Image.asset(
                          value.cartitems[index][2],
                          height: 36,
                        ),
                        title: Text(value.cartitems[index][0]),
                        subtitle: Text('\$' + value.cartitems[index][1]),
                        trailing: IconButton(
                            onPressed: () => {
                                  Provider.of<CartModel>(context, listen: false)
                                      .removeitemFromcart(index),
                                },
                            icon: Icon(Icons.cancel)),
                      ),
                    ),
                  );
                },
              ),
            ),
            //total + pay bottun

            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Toatal Price',
                          style: TextStyle(color: Colors.green[100]),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          '\$' + value.CalculateTotal(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    //pay button

                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.green.shade100,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Text(
                            'Pay Now',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 16,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        );
      }),
    );
  }
}
