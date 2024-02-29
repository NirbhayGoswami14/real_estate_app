import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:real_estate_app/app/routes/app_pages.dart';
import 'package:real_estate_app/util/app_images.dart';
import 'package:real_estate_app/util/color_utils.dart';
import 'package:real_estate_app/util/textstyles.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    AppImages.logoWithTitle,
                    width: 300,
                    height: 300,
                  )),
              Text(
                "Sign In",
                style: TextStyles.bold18,
              ),
              SizedBox(height: 20,),
              Text("Username", style:TextStyles.semiBold14),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:15),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Username",
                    hintStyle:TextStyles.normal14,
                    prefixIcon: Icon(Icons.person_2_outlined)),
              ),
              SizedBox(
                height: 20,
              ),
              Text("Password", style: TextStyles.semiBold14),
              SizedBox(height: 10,),
              Obx(() => TextFormField(
                obscureText: controller.isObscure.value,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical:15),
                    border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: "Password",
                    hintStyle:TextStyles.normal14,
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon:IconButton(icon:controller.isObscure.value?Icon(Icons.visibility_outlined):Icon(Icons.visibility_off_outlined), onPressed: () {
                      controller.isObscure.value=!controller.isObscure.value;
                    },)
                ),
              ),),

              SizedBox(height: 20,),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                    onPressed: () {
                      Get.offNamed(Routes.DASHBOARD);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorUtils.primaryColor,minimumSize: Size(350,45)),
                    child: Text(
                      "Sign In",
                      style: TextStyles.bold14,
                    )),
              ),

              SizedBox(height: 40,),
              Row(children: [
                Expanded(child: Divider(endIndent:20,thickness: 0.2,color:Colors.black,)),

                Text("Or continue with",style:TextStyles.normal10,),

                Expanded(child: Divider(indent:20,thickness: 0.2,color:Colors.black,)),
              ],),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon:Icon(Icons.g_mobiledata_outlined)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.apple)),
                  IconButton(onPressed: (){}, icon:Icon(Icons.facebook)),
                ],
              ),
              SizedBox(height:50,),
              Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.SIGNUP);
                      },
                      child: RichText(
                          text: TextSpan(
                              text: "Not have an account ?",
                              style: TextStyles.semiBold14,
                              children: [
                            TextSpan(
                                text: " Signup",
                                style: TextStyle(
                                    color: ColorUtils.primaryColor,
                                    decoration: TextDecoration.underline))
                          ]))))
            ],
          ),
        ),
      ),
    );
  }
}
