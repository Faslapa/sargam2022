import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:online_food_ordering_web/screens/home/components/formfield.dart';
import 'package:online_food_ordering_web/screens/home/components/product.dart';

import '../../../constants.dart';
import '../../../model.dart/product_model.dart';
import '../../../model.dart/responsive.dart';

class Soloevents extends StatelessWidget {
  final List<Product> productlist;
  final String title;
  final IconData icon;
  const Soloevents(
      {Key? key,
      required this.productlist,
      required this.title,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              color: kSecondaryColor),
        ),
        SizedBox(
          height: 10,
        ),
        //now we create model of our product images
        // we are using gridview inside column and scrollview widget thats why we are facing error
        // use shrinkwrap and ScrollPhysics widget
        Responsive(
          desktop: ProductCard(
            icon: icon,
            productlist: productlist,
            crossAxiscount: _size.width < 650 ? 2 : 3,
            aspectRatio: _size.width < 650 ? 0.85 : 1,
          ),
          tablet: ProductCard(
            icon: icon,
            productlist: productlist,
            crossAxiscount: _size.width < 825 ? 2 : 3,
            aspectRatio: _size.width < 825 ? 0.85 : 1,
          ),
          mobile: ProductCard(
            icon: icon,
            productlist: productlist,
            crossAxiscount: _size.width < 690 ? 2 : 3,
            aspectRatio: _size.width < 560 ? 0.85 : 1,
          ),
        ),
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final List<Product> productlist;
  final IconData icon;
  ProductCard({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
    required this.productlist,
    required this.icon,
  }) : super(key: key);
  final int crossAxiscount;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxiscount,
        childAspectRatio: aspectRatio,
      ),
      itemBuilder: (context, index) => Products(
        icon: icon,
        press: () async {
          _showMyDialog(context: context, product: productlist[index]);
        },
        product: productlist[index],
      ),
      itemCount: productlist.length,
    );
  }
}

Future<void> _showMyDialog(
    {required BuildContext context, required Product product}) async {
  return showDialog<void>(
    context: context,
    // user must tap button!
    builder: (BuildContext context) {
      Widget Screen = Container();
      final _formKey = GlobalKey<FormState>();
      final TextEditingController _nameController = TextEditingController();
      final TextEditingController _emailController = TextEditingController();
      final TextEditingController _trvidcontroller = TextEditingController();
      final TextEditingController _phonecontroller = TextEditingController();

      bool isProcessing = false;
      String? dept = null;
      String? sem = null;
      Widget progressIndicator = Center(child: CircularProgressIndicator());
      Widget submittedSuccessfully = Center(
        child: Column(
          children: const [
            Icon(
              Icons.done,
              color: Colors.green,
              size: 40,
            ),
            Text('Submit Successful'),
          ],
        ),
      );
      Widget registeredThree = Column(
        children: const [
          Icon(
            Icons.close,
            color: Colors.red,
            size: 40,
          ),
          Text('Already registered for 3 events'),
        ],
      );
      Widget errormsg = Column(
        children: const [
          Icon(
            Icons.close,
            color: Colors.red,
            size: 40,
          ),
          Text('Something Went Wrong'),
        ],
      );
      Widget indicator = progressIndicator;
      return Form(
        key: _formKey,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Text(
              product.title,
              textAlign: TextAlign.center,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: isProcessing
                  ? indicator
                  : ListBody(
                      children: <Widget>[
                        CustomTextField(
                            title: 'Name', controller: _nameController),
                        CustomTextField(
                            title: 'Class Roll Number',
                            controller: _emailController),
                        Text(
                          'Department',
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        DropdownButtonFormField(
                            decoration: InputDecoration(
                                isDense: true, border: OutlineInputBorder()),
                            validator: (value) {
                              if (value == null) {
                                return 'This Field is Mandatory';
                              }
                              return null;
                            },
                            value: dept,
                            icon: Icon(Icons.arrow_drop_down),
                            items: <String>[
                              'ECE',
                              'EEE',
                              'ME',
                              'CE',
                              'IT',
                              'M.Tech ECE',
                              'M.Tech IT',
                              'M.Tech ME',
                              'M.Tech EEE'
                            ]
                                .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem(
                                          child: Text(value),
                                          value: value,
                                        ))
                                .toList(),
                            onChanged: (String? newvalue) {
                              setState(() => dept = newvalue);
                            }),
                        SizedBox(height: 14),
                        Text(
                          'Semester',
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(
                                  fontSize: 17,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        DropdownButtonFormField(
                            decoration: InputDecoration(
                                isDense: true, border: OutlineInputBorder()),
                            validator: (value) {
                              if (value == null) {
                                return 'This Field is Mandatory';
                              }
                              return null;
                            },
                            value: sem,
                            icon: Icon(Icons.arrow_drop_down),
                            items: <String>['S2', 'S4', 'S6', 'S8']
                                .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem(
                                          child: Text(value),
                                          value: value,
                                        ))
                                .toList(),
                            onChanged: (String? newvalue) {
                              setState(() => sem = newvalue);
                            }),
                        const SizedBox(height: 14),
                        CustomTextField(
                            title: 'KTU Registration ID',
                            controller: _trvidcontroller),
                        CustomTextField(
                          title: 'Phone Number',
                          controller: _phonecontroller,
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
            ),
            actions: <Widget>[
              isProcessing
                  ? Container()
                  : TextButton(
                      child: const Text(
                        'SUBMIT',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () async {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        } else {
                          try {
                            final fb = FirebaseDatabase.instance;
                            final database = fb.ref();
                            setState(() => isProcessing = true);

                            await database
                                .child('soloevents/${product.route}')
                                .push()
                                .set({
                              'name': _nameController.text,
                              'dept': dept,
                              'trvid': _trvidcontroller.text.toLowerCase(),
                              'sem': sem,
                              'phone': _phonecontroller.text,
                              'email': _emailController.text
                            }).whenComplete(() async {
                              setState(() => indicator = submittedSuccessfully);
                              await Future.delayed(Duration(seconds: 1));

                              Navigator.of(context).pop();
                            });
                          } catch (e) {
                            setState(() => indicator = errormsg);
                            await Future.delayed(Duration(seconds: 1));

                            Navigator.of(context).pop();
                          }
                        }
                      },
                    ),
            ],
          );
        }),
      );
    },
  );
}
