import 'package:flutter/material.dart';
import 'package:x_clone/constanst/ui_constants.dart';
import 'package:x_clone/features/auth/widgets/auth_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar(); //(1)

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar, //(1.1)
      body: Center(
        //(2)
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                //textfield 1
                AuthField(
                  controller: emailController,
                  hintText: "email",
                ),
                const SizedBox(height: 25,),
                //textfield 2
                AuthField(
                  controller: passwordController,
                  hintText: "password",
                ),
                //button
                //textspan
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///(1)
//Sayfa her yenilendiğinde logomuzun da yeniden yüklenmesini istemiyoruz.
//Çünkü yükleniyor çemberi ekrana çıktığında logomuz ortadan kaybolabilir.
//Bu yüzden oluşturduğumuz UIConstants.appBar'ı final olarak başta tanımlıyoruz
//ve build içerisinde bu tanımı kullanıyoruz. Böylece uygulama her rebuild
//olduğunda appBar yenilenMEyecek!!!

///(2)
//SingleChildScrollView() kullanıyoruz çünkü veri girişi alanlarına veri girmek
//için dokunduğumuzda klavye açılacak, ve klavye açıldığında ekrana sığma
//hatası ile karşılaşmamak için ekranı kaydırılabilir hale getiren bu widget'ı
//kullanıyoruz.
