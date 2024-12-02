
import 'package:flutter/material.dart';
import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/themes/styles.dart';
import 'editing_form_field.dart';
import 'profile_img_with_edit.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProfileImageWithEdit(),
          const SizedBox(height: 20,),
          const Divider(),
          const SizedBox(height: 20,),
          Text('Name',style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),),
          const EditingFormField(initialVal: 'Marwan Ali',),
          Text('Phone',style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),),
          const EditingFormField(initialVal: '01125727329',),
          const SizedBox(height: 40),
          Center(
            child: SizedBox(
              width: 250,
                height: 60,
              child: CustomButton(
                label: 'Save Profile',
                onPressed: (){},
                icon: Icons.save,
                fontSize: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}