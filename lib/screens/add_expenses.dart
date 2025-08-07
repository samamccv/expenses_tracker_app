import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddExpenses extends StatefulWidget {
  const AddExpenses({super.key});

  @override
  State<AddExpenses> createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  TextEditingController expenseController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  List<String> MycategoryIcons = [
    'entirtainment',
    'food',
    'health',
    'travel',
    'shopping',
    'others',
  ];

  @override
  @override
  void initState() {
    super.initState();
    dateController.text = DateFormat('dd/MM/yy').format(DateTime.now());
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: AppBar(
          title: Text(
            'Add Expenses',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Amount',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  TextFormField(
                    controller: expenseController,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        FontAwesomeIcons.dollarSign,
                        color: Colors.blueGrey,
                        size: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    readOnly: true,
                    onTap: () {},
                    controller: categoryController,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        FontAwesomeIcons.list,
                        color: Colors.blueGrey,
                        size: 16,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16),
                              ),
                            ),
                            builder: (ctx) {
                              return StatefulBuilder(
                                builder: (context, setState) {
                                  return SingleChildScrollView(
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 16,
                                        right: 16,
                                        top: 16,
                                        bottom:
                                            MediaQuery.of(
                                              context,
                                            ).viewInsets.bottom +
                                            16,
                                      ),
                                      child: SizedBox(
                                        height:
                                            MediaQuery.of(context).size.height *
                                            0.6,

                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextFormField(
                                              onTap: () {
                                                setState(() {});
                                              },
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              readOnly: true,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                prefixIcon: Icon(
                                                  FontAwesomeIcons.ellipsis,
                                                  color: Colors.blueGrey,
                                                  size: 16,
                                                ),
                                                suffixIcon: Icon(
                                                  FontAwesomeIcons.chevronDown,
                                                  color: Colors.blueGrey,
                                                  size: 16,
                                                ),
                                                hintText:
                                                    'choose your category',
                                                hintStyle: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontSize: 14,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.vertical(
                                                        top: Radius.circular(
                                                          12,
                                                        ),
                                                      ),
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),

                                            Container(
                                              width: 500,
                                              height: 400,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.vertical(
                                                      bottom: Radius.circular(
                                                        12,
                                                      ),
                                                    ),
                                              ),
                                              child: GridView.builder(
                                                gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 4,
                                                    ),
                                                itemCount:
                                                    MycategoryIcons.length,
                                                itemBuilder: (context, int i) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          vertical: 4,
                                                        ),
                                                    child: SvgPicture.asset(
                                                      'assets/svg/${MycategoryIcons[i]}.svg',
                                                      width: 50,
                                                      height: 40,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                        icon: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.blueGrey,
                          size: 16,
                        ),
                      ),
                      hintText: 'Select Category',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: dateController,
                    textAlignVertical: TextAlignVertical.center,
                    readOnly: true,
                    onTap: () async {
                      DateTime? newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime.now(),
                        lastDate: DateTime.now().add(Duration(days: 365)),
                      );

                      if (newDate != null) {
                        setState(() {
                          dateController.text = DateFormat(
                            'dd/MM/yy',
                          ).format(newDate);
                          selectedDate = newDate;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        FontAwesomeIcons.calendar,
                        color: Colors.blueGrey,
                        size: 16,
                      ),
                      hintText: 'Pick Date',
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: kToolbarHeight,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
