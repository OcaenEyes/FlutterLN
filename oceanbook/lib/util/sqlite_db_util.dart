/*
 * @Author: OCEAN.GZY
 * @Date: 2023-01-29 13:47:06
 * @LastEditors: OCEAN.GZY
 * @LastEditTime: 2023-01-29 14:25:16
 * @FilePath: /oceanbook/lib/util/sqlite_db_util.dart
 * @Description: 注释信息
 */
import 'dart:io';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class MainDataBaseHelper {
  static Future<String> getDbDirPath() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String dirName = "oceanbooks";
    String dirPath = p.join(appDocDir.path,dirName);

    return dirPath;
  }
}
