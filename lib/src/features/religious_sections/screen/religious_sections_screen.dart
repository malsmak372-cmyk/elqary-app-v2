import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/util/bloc/religious_sections/religious_sections_bloc.dart';
import '../../../core/util/model/religious_section.dart';
import 'religious_content_screen.dart';

class ReligiousSectionsScreen extends StatelessWidget {
  const ReligiousSectionsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الأقسام الدينية'),
        centerTitle: true,
      ),
      body: BlocBuilder<ReligiousSectionsBloc, ReligiousSectionsState>(
        builder: (context, state) {
          if (state is ReligiousSectionsLoaded) {
            return ListView.builder(
              padding: EdgeInsets.all(16.w),
              itemCount: state.sections.length,
              itemBuilder: (context, index) {
                final section = state.sections[index];
                return Card(
                  margin: EdgeInsets.only(bottom: 16.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    title: Text(
                      section.enwan,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                      ),
                    ),
                    subtitle: section.nabza.isNotEmpty 
                      ? Text(section.nabza) 
                      : Text('عدد المواد: ${section.adad}'),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16.sp),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReligiousContentScreen(section: section),
                        ),
                      );
                    },
                  ),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
