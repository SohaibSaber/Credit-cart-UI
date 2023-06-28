import 'package:creditcart/constants.dart';
import 'package:creditcart/screens/awcc-credit/awcc-screen.dart';
import 'package:creditcart/screens/top-ups/add-topup.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:get/get.dart';
import '../../main.dart';
import '../../widgets/custom-appbar.dart';
import 'components/simcart-container.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 70),
          child: CustomAppBar(
              appBarIcon: InkWell(child: Icon(Icons.subject_sharp)),
              appBarTitle: 'Dashboard',
              appBarImage: 'assets/images/profilepic.png'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          width: 220,
                          height: 113,
                          decoration: BoxDecoration(
                            color: balanceShapeColor,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '\$ 45,456',
                                style: TextStyle(
                                    fontSize: 24, color: balancetxtColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Balance',
                                style: TextStyle(
                                    fontSize: 10, color: balancetxtColor),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                          width: 220,
                          height: 151,
                          decoration: BoxDecoration(
                            color: incomeShapeColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'income',
                                style: TextStyle(
                                    fontSize: 10, color: balancetxtColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                '\$ 45,456',
                                style: TextStyle(
                                    fontSize: 24, color: balancetxtColor),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              GroupButton(
                                buttons: ['Today', 'Always'],
                                options: GroupButtonOptions(
                                    borderRadius: BorderRadius.circular(20.5),
                                    buttonHeight: 31,
                                    buttonWidth: 95,
                                    selectedColor: kbtnColor,
                                    unselectedColor: todayBtnShapeColor,
                                    unselectedTextStyle:
                                        TextStyle(color: kbtnColor)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 120,
                          height: 72,
                          decoration: BoxDecoration(
                              color: topUpShapeColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: InkWell(
                            onTap: () {
                              Get.to(()=>AddTopUp());
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.speed_sharp,
                                  size: 15,
                                ),
                                Center(
                                    child: Text(
                                  'TOPUP',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: balancetxtColor),
                                )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 174,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: salesShapeColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.login,
                                size: 15,
                              ),
                              Text(
                                'Sales',
                                style:
                                    TextStyle(color: salesTxtColor, fontSize: 12),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '\$ 45,456',
                                style: TextStyle(
                                    fontSize: 16, color: balancetxtColor),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Icon(Icons.logout, size: 15),
                              Text(
                                'Purchase',
                                style:
                                    TextStyle(color: salesTxtColor, fontSize: 12),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Text(
                                '\$ 45,456',
                                style: TextStyle(
                                    fontSize: 16, color: balancetxtColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Top Selling Products',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Get.to(()=>AwccCredit());
                  },
                  child: SimcartCredit(
                    borderColor: salamborderColor,
                    image: 'assets/images/salamicon.png',
                    text: 'کریدت کارت 50 افغانی سلام',
                  ),
                ),
                SizedBox(height: 10,),
                SimcartCredit(
                    borderColor: etsalatBorderColor,
                    image: 'assets/images/etsalaticon.png',
                    text: 'کریدت کارت 50 افغانی سلام'),
                SizedBox(height: 10,),
                SimcartCredit(
                    borderColor: afghanbisimBorderColor,
                    image: 'assets/images/afghanbisimicon.png',
                    text: 'کریدت کارت 50 افغانی سلام'),
                SizedBox(height: 20,),
                Text('News',style: TextStyle(
                  fontSize: 16
                ),),
                Container(
                  width: 392,
                  height: 168,
                  child: Image.asset('assets/images/news.png'),
                ),
                SizedBox(height: 80,)
              ],
            ),
          ),
        ));
  }
}


