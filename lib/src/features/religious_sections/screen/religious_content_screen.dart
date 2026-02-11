import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqflite/sqflite.dart';
import '../../../core/util/bloc/database/database_bloc.dart';
import '../../../core/util/model/religious_section.dart';

class ReligiousContentScreen extends StatefulWidget {
  final ReligiousSection section;
  const ReligiousContentScreen({required this.section});

  @override
  State<ReligiousContentScreen> createState() => _ReligiousContentScreenState();
}

class _ReligiousContentScreenState extends State<ReligiousContentScreen> {
  List<ReligiousContent> contents = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadContent();
  }

  Future<void> _loadContent() async {
    final db = BlocProvider.of<DatabaseBloc>(context).db;
    if (db != null) {
      final List<Map<String, dynamic>> maps = await db.query(
        'kalem_mawad',
        where: 'qesm_id = ?',
        whereArgs: [widget.section.id],
      );
      setState(() {
        contents = maps.map((map) => ReligiousContent.fromMap(map)).toList();
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.section.enwan),
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : contents.isEmpty
              ? Center(child: Text('لا يوجد محتوى حالياً'))
              : ListView.builder(
                  padding: EdgeInsets.all(16.w),
                  itemCount: contents.length,
                  itemBuilder: (context, index) {
                    final content = contents[index];
                    return Card(
                      margin: EdgeInsets.only(bottom: 16.h),
                      child: Padding(
                        padding: EdgeInsets.all(16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (content.enwan.isNotEmpty)
                              Text(
                                content.enwan,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            if (content.enwan.isNotEmpty) SizedBox(height: 10.h),
                            Text(
                              content.nass,
                              style: TextStyle(
                                fontSize: 16.sp,
                                height: 1.5,
                              ),
                              textAlign: TextAlign.justify,
                            ),
                            if (content.masdar.isNotEmpty) ...[
                              SizedBox(height: 10.h),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'المصدر: ${content.masdar}',
                                  style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 12.sp,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
