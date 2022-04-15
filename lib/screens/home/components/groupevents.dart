import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:online_food_ordering_web/screens/home/components/formfield.dart';
import 'package:online_food_ordering_web/screens/home/components/product.dart';

import '../../../constants.dart';
import '../../../model.dart/product_model.dart';
import '../../../model.dart/responsive.dart';

class GroupEvents extends StatelessWidget {
  final List<Product> productlist;
  final String title;
  const GroupEvents({Key? key, required this.productlist, required this.title})
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
              fontSize: 25.0,
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
            productlist: productlist,
            crossAxiscount: _size.width < 650 ? 2 : 3,
            aspectRatio: _size.width < 650 ? 0.85 : 1,
          ),
          tablet: ProductCard(
            productlist: productlist,
            crossAxiscount: _size.width < 825 ? 2 : 3,
            aspectRatio: _size.width < 825 ? 0.85 : 1,
          ),
          mobile: ProductCard(
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
  ProductCard({
    Key? key,
    this.crossAxiscount = 3,
    this.aspectRatio = 1.1,
    required this.productlist,
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
      final TextEditingController _groupLeaderController =
          TextEditingController();
      final TextEditingController _mem1Controller = TextEditingController();
      final TextEditingController _mem2Controller = TextEditingController();
      final TextEditingController _mem3Controller = TextEditingController();
      final TextEditingController _mem4Controller = TextEditingController();
      final TextEditingController _mem5Controller = TextEditingController();
      final TextEditingController _mem6Controller = TextEditingController();
      final TextEditingController _mem7Controller = TextEditingController();
      final TextEditingController _mem8Controller = TextEditingController();
      final TextEditingController _mem9Controller = TextEditingController();
      final TextEditingController _rollnumberController =
          TextEditingController();

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
      Widget indicator = progressIndicator;
      return Form(
        key: _formKey,
        child: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Text(
              product.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            content: SingleChildScrollView(
              child: isProcessing
                  ? indicator
                  : ListBody(
                      children: <Widget>[
                        CustomTextField(
                            title: 'Group Leader',
                            controller: _groupLeaderController),
                        CustomTextField(
                            title: 'Class Roll Number',
                            controller: _rollnumberController),
                        CustomTextField(
                          title: 'Phone Number',
                          controller: _phonecontroller,
                          keyboardType: TextInputType.phone,
                        ),
                        CustomTextField(
                            title: 'Member 1 name',
                            controller: _mem1Controller),
                        CustomTextField(
                            title: 'Member 2 name',
                            isRequired: false,
                            controller: _mem2Controller),
                        CustomTextField(
                            title: 'Member 3 name',
                            isRequired: false,
                            controller: _mem3Controller),
                        CustomTextField(
                            title: 'Member 4 name',
                            isRequired: false,
                            controller: _mem4Controller),
                        CustomTextField(
                            title: 'Member 5 name',
                            isRequired: false,
                            controller: _mem5Controller),
                        CustomTextField(
                            title: 'Member 6 name',
                            isRequired: false,
                            controller: _mem6Controller),
                        CustomTextField(
                            title: 'Member 7 name',
                            isRequired: false,
                            controller: _mem7Controller),
                        CustomTextField(
                            title: 'Member 8 name',
                            isRequired: false,
                            controller: _mem8Controller),
                        CustomTextField(
                            title: 'Member 9 name',
                            isRequired: false,
                            controller: _mem9Controller),
                        const SizedBox(height: 4),
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
                        DropdownButtonFormField(
                            validator: (value) {
                              if (value == null) {
                                return 'This Field is Mandatory';
                              }
                              return null;
                            },
                            value: dept,
                            icon: Icon(Icons.arrow_drop_down),
                            items: <String>['ECE', 'EEE', 'ME', 'CE', 'IT']
                                .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem(
                                          child: Text(value),
                                          value: value,
                                        ))
                                .toList(),
                            onChanged: (String? newvalue) {
                              setState(() => dept = newvalue);
                            }),
                        SizedBox(height: 4),
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
                        DropdownButtonFormField(
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
                            })
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
                                .child('groupevents/${product.route}')
                                .push()
                                .set({
                              'Group Leader': _groupLeaderController.text,
                              'dept': dept,
                              'Member 1 name': _mem1Controller.text,
                              'Member 2 name': _mem2Controller.text,
                              'Member 3 name': _mem3Controller.text,
                              'Member 4 name': _mem4Controller.text,
                              'Member 5 name': _mem5Controller.text,
                              'Member 6 name': _mem6Controller.text,
                              'Member 7 name': _mem7Controller.text,
                              'Member 8 name': _mem8Controller.text,
                              'Member 9 name': _mem9Controller.text,
                              'sem': sem,
                              'phone': _phonecontroller.text,
                              'Class Roll Number': _rollnumberController.text
                            }).whenComplete(() async {
                              setState(() => indicator = submittedSuccessfully);
                              await Future.delayed(Duration(seconds: 1));

                              Navigator.of(context).pop();
                            });
                          } catch (e) {
                            Navigator.of(context).pop();
                            print('error');
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
