import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_page_client/util/image_const.dart';
import 'package:web_page_client/widgets/text_custom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PromoSave',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage();

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int orange = 0xffF15622;
  int greyDark = 0xff5F5F5F;

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {

    double heightWeb = 1850;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: width>1000
          ?LayoutWeb()
          :LayoutMobile()
    );
  }
}
class LayoutWeb extends StatelessWidget {
  const LayoutWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int orange = 0xffF15622;
    int greyDark = 0xff5F5F5F;

    final controller = ScrollController();
    double width = MediaQuery.of(context).size.width;
    double heightWeb = 1950;

    return Container(
      height: heightWeb,
      child: ListView(
        physics: ScrollPhysics(),
        controller: controller,
        children:[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 80),
                child: Image.network(ImageConst.logo,height: 133,),
              ),
              Spacer(),
              InkWell(
                onTap: (){
                  controller.animateTo(0,duration: Duration(seconds: 1),curve: Curves.easeInOut);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextCustom(text: 'Home',size: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextCustom(text: '.',size: 22.0),
              ),
              InkWell(
                onTap: (){
                  controller.animateTo(MediaQuery.of(context).size.height*0.8,duration: Duration(seconds: 1),curve: Curves.easeInOut);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextCustom(text: 'O Aplicativo',size: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextCustom(text: '.',size: 22.0),
              ),
              InkWell(
                onTap: (){
                  controller.animateTo(heightWeb,duration: Duration(seconds: 2),curve: Curves.easeInOut);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextCustom(text: 'Sobre Nós',size: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextCustom(text: '.',size: 22.0),
              ),
              InkWell(
                onTap: (){
                  controller.animateTo(heightWeb,duration: Duration(seconds: 2),curve: Curves.easeInOut);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextCustom(text: 'Contato',size: 22.0),
                ),
              ),
              SizedBox(width: 80,)
            ],
          ),
          Container(
            // color: Colors.orange,
            margin: const EdgeInsets.only(left: 90.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustom(text:'Baixe agora mesmo para ter',size: 36.0,fontWeight: FontWeight.bold,maxLines: 4),
                    RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'acesso aos melhores ',
                                  style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                              TextSpan(
                                  text: 'alimentos',
                                  style: TextStyle(color: Color(0xffF15622),fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'nos melhores',
                                  style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                              TextSpan(
                                  text: ' preços ',
                                  style: TextStyle(color: Color(0xffF15622),fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                              TextSpan(
                                  text: 'e ainda',
                                  style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                            ]
                        )
                    ),
                    RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                  text: 'ajudar a ',
                                  style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                              TextSpan(
                                  text: 'combater o desperdício',
                                  style: TextStyle(color: Color(orange),fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                              TextSpan(
                                  text: '!',
                                  style: TextStyle(color: Colors.black,fontSize: 36.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                              ),
                            ]
                        )
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        InkWell(
                          onTap: ()async{
                            await launch('https://play.google.com/store/apps/details?id=com.promosave.promosavecliente');
                          },
                          child: Image.asset('assets/image/google_play.png',width: 200,)
                        ),
                        InkWell(
                          onTap: ()async{
                            await launch('https://apps.apple.com/us/app/promosave/id1660642879');
                          },
                          child: Image.asset('assets/image/app_store.png',width: 200,)
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  // color: Colors.green,
                    child: Image.network(ImageConst.celular_home,width: width*0.35,)),
              ],
            ),
          ),
          Container(
            height: 590,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color(orange),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(150),bottomRight: Radius.circular(150))
            ),
            child:  Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: TextCustom(text:'O Aplicativo feito para você que quer',size: 30.0,fontWeight: FontWeight.bold,color: Colors.white,),
                ),
                RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'POUPAR',
                              style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito',decoration: TextDecoration.underline)
                          ),
                          TextSpan(
                              text: ' uma grana e combater o ',
                              style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                          ),
                          TextSpan(
                              text: 'DESPERDÍCIO',
                              style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito',decoration: TextDecoration.underline)
                          ),
                          TextSpan(
                              text: ' de alimentos ',
                              style: TextStyle(color: Colors.white,fontSize: 30.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                          ),
                        ]
                    )
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 5,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 262,
                        height: 368,
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                              width: 250,
                              child: TextCustom(
                                text: 'Você seleciona um dos estabelecimentos próximos a você e escolhe o tipo de produto que deseja',
                                textAlign: TextAlign.center,
                                maxLines: 7,
                                size: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Color(greyDark),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.shopping_bag_outlined,size: 65,color: Color(greyDark),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 35,),
                    Card(
                      elevation: 5,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 262,
                        height: 368,
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
                              width: 250,
                              child: TextCustom(
                                text: 'Seleciona o endereço para entrega, a forma de pagamento e confirma o pedido',
                                textAlign: TextAlign.center,
                                maxLines: 7,
                                size: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Color(greyDark),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.check_circle_outline,size: 65,color: Color(greyDark),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 35,),
                    Card(
                      elevation: 5,
                      shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 262,
                        height: 368,
                        padding: EdgeInsets.symmetric(vertical: 30),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 5),
                              width: 250,
                              child: TextCustom(
                                text: 'Receba seu produto em casa ou trabalho, economizando \$ e ajudando no combate ao desperdício de alimentos',
                                textAlign: TextAlign.center,
                                maxLines: 8,
                                size: 22.0,
                                fontWeight: FontWeight.bold,
                                color: Color(greyDark),
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.percent,size: 65,color: Color(greyDark),)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
          Image.network(ImageConst.celulares,height: 700,),
          TextCustom(text: 'Sobre nós',size: 35.0,fontWeight: FontWeight.bold,color: Color(orange),textAlign: TextAlign.center,),
          SizedBox(height: 50,),
          TextCustom(
            text: 'Somos uma Startup que atua na luta contra o desperdício,\nfornecendo alimentos que seriam descartados por terem sido\nproduzidos em excesso a um preço acessível.',
            size: 32.0,textAlign: TextAlign.center,maxLines: 3,
          ),
          SizedBox(height: 150,),
          Container(
            color: Color(orange),
            width: double.infinity,
            height: 300,
            child: Column(
              children: [
                SizedBox(height: 30,),
                TextCustom(
                  text: 'Juntos contra o desperdício!',
                  size: 25.0,textAlign: TextAlign.center,fontWeight: FontWeight.bold,color: Colors.white,
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: ()async{
                        await launch('https://www.facebook.com/promosavebrasil');
                      },
                      icon: Icon(FontAwesomeIcons.facebookSquare,color: Colors.white,size: 50,),
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      onPressed: ()async{
                        await launch('https://www.instagram.com/promosavebrasil/');
                      },
                      icon: Icon(FontAwesomeIcons.instagramSquare,color: Colors.white,size: 50,),
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      onPressed: ()async{
                        await launch('https://twitter.com/PromoSaveBrasil');
                      },
                      icon:  Icon(FontAwesomeIcons.twitterSquare,color: Colors.white,size: 50,),
                    ),
                    SizedBox(width: 30,),
                    IconButton(
                      onPressed: ()async{
                        await launch('https://api.whatsapp.com/send?phone=5541992168531');
                      },
                      icon:  Icon(FontAwesomeIcons.whatsapp,color: Colors.white,size: 50,),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Image.network(ImageConst.logo_bottom,height: 90,),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LayoutMobile extends StatelessWidget {
  const LayoutMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    int orange = 0xffF15622;
    int greyDark = 0xff5F5F5F;

    final controller = ScrollController();
    double width = MediaQuery.of(context).size.width;
    double heightMobile = 1950;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.network(ImageConst.logo,height: 50,),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        height: heightMobile,
        child: ListView(
          physics: ScrollPhysics(),
          controller: controller,
          children:[
            Container(
              child: Column(
                children: [
                  TextCustom(text:'Baixe agora mesmo para ter',size: 20.0,fontWeight: FontWeight.bold,maxLines: 4),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'acesso aos melhores ',
                                style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: 'alimentos',
                                style: TextStyle(color: Color(0xffF15622),fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                          ]
                      )
                  ),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'nos melhores',
                                style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: ' preços ',
                                style: TextStyle(color: Color(0xffF15622),fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: 'e ainda',
                                style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                          ]
                      )
                  ),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: 'ajudar a ',
                                style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: 'combater o desperdício',
                                style: TextStyle(color: Color(orange),fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: '!',
                                style: TextStyle(color: Colors.black,fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                          ]
                      )
                  ),
                  SizedBox(height: 30),
                  Container(
                    // color: Colors.green,
                      child: Image.network(ImageConst.celular_home,width: width*0.6,)
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: ()async{
                            await launch('https://play.google.com/store/apps/details?id=com.promosave.promosavecliente');
                          },
                          child: Image.asset('assets/image/google_play.png',width: 175,)
                      ),
                      InkWell(
                          onTap: ()async{
                            await launch('https://apps.apple.com/us/app/promosave/id1660642879');
                          },
                        child: Image.asset('assets/image/app_store.png',width: 175,)
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(orange),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),bottomRight: Radius.circular(70))
              ),
              child:  Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: TextCustom(text:'O Aplicativo feito para você que',size: 18.0,fontWeight: FontWeight.bold,color: Colors.white,),
                  ),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: ' quer ',
                                style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: 'POUPAR',
                                style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito',decoration: TextDecoration.underline)
                            ),
                            TextSpan(
                                text: ' uma grana e combater',
                                style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                          ]
                      )
                  ),
                  RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: ' o ',
                                style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                            TextSpan(
                                text: 'DESPERDÍCIO',
                                style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito',decoration: TextDecoration.underline)
                            ),
                            TextSpan(
                                text: ' de alimentos',
                                style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold,fontFamily: 'Nunito')
                            ),
                          ]
                      )
                  ),
                  Card(
                    margin: EdgeInsets.all(30),
                    elevation: 5,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            child: TextCustom(
                              text: 'Você seleciona um dos estabelecimentos próximos a você e escolhe o tipo de produto que deseja',
                              textAlign: TextAlign.center,
                              maxLines: 7,
                              size: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color(greyDark),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.shopping_bag_outlined,size: 50,color: Color(greyDark),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    elevation: 5,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            child: TextCustom(
                              text: 'Seleciona o endereço para entrega, a forma de pagamento e confirma o pedido',
                              textAlign: TextAlign.center,
                              maxLines: 7,
                              size: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color(greyDark),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.check_circle_outline,size: 50,color: Color(greyDark),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(30),
                    elevation: 5,
                    shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      height: 250,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(15),
                            child: TextCustom(
                              text: 'Receba seu produto em casa ou trabalho, economizando \$ e ajudando no combate ao desperdício de alimentos',
                              textAlign: TextAlign.center,
                              maxLines: 8,
                              size: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color(greyDark),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.percent,size: 50,color: Color(greyDark),)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ),
            Image.network(ImageConst.celulares1,width: width*0.8,),
            TextCustom(text: 'Sobre nós',size: 30.0,fontWeight: FontWeight.bold,color: Color(orange),textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextCustom(
                text: 'Somos uma Startup que atua na luta contra o desperdício, fornecendo alimentos que seriam descartados por terem sido produzidos em excesso a um preço acessível.',
                size: 20.0,textAlign: TextAlign.center,maxLines: 7,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Color(orange),
              width: double.infinity,
              height: 210,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  TextCustom(
                    text: 'Juntos contra o desperdício!',
                    size: 16.0,textAlign: TextAlign.center,fontWeight: FontWeight.bold,color: Colors.white,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(),
                      IconButton(
                        onPressed: ()async{
                          await launch('https://www.facebook.com/promosavebrasil');
                        },
                        icon: Icon(FontAwesomeIcons.facebookSquare,color: Colors.white,size: 30,),
                      ),
                      IconButton(
                        onPressed: ()async{
                          await launch('https://www.instagram.com/promosavebrasil/');
                        },
                        icon: Icon(FontAwesomeIcons.instagramSquare,color: Colors.white,size: 30,),
                      ),
                      IconButton(
                        onPressed: ()async{
                          await launch('https://twitter.com/PromoSaveBrasil');
                        },
                        icon:  Icon(FontAwesomeIcons.twitterSquare,color: Colors.white,size: 30,),
                      ),
                      IconButton(
                        onPressed: ()async{
                          await launch('https://api.whatsapp.com/send?phone=5541992168531');
                        },
                        icon:  Icon(FontAwesomeIcons.whatsapp,color: Colors.white,size: 30,),
                      ),
                      Container(),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Image.network(ImageConst.logo_bottom,height: 75,),
                  SizedBox(height: 20,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

