
import 'dart:math';

/*
* 字符串常规操作
* */
extension StringOption on String {

  /*
  * 是否为null
  * */
  bool get isNull => this == null;

  /*
  * 是否为null或者空
  * */
  bool get isEmptyOrNull {
    if (this == null) return true;
    if (this.isEmpty) return true;
    return false;
  }

  /*
  *  添加字符串到末尾位置
  * */
  String addEnd(String sub) {
    if (this.isEmptyOrNull) return sub.isEmptyOrNull ? "" : sub;
    return this + sub;
  }

  /*
  * 添加字符串到起始位置
  * */
  String AddStart(String sub){
    if (this.isEmptyOrNull) return sub.isEmptyOrNull ? "" : sub;
    return sub + this;
  }

  /*
  * 删除一个范围的字符串
  * - Parameter start: 起始位置
  * - Parameter end: 结束位置，默认是到字符串的末尾位置
  * */
  String deleteRange(int start, {int end, bool}){
    if(this.isEmptyOrNull) return "";
    if (this.length <= start) return this;
    if (end == null) end = this.length - 1;
    if (this.length <= end) return this;
    return this.replaceRange(start, end, "");
  }

  /*
  * 删除子字符串
  * - Parameter sub: 子字符串
  * - Parameter isAll: 是否删除查找到的所有子字符串
  * */
  String deleteSub(String sub, {bool isAll = false}){
    if(this.isEmptyOrNull) return "";
    if(sub.isEmptyOrNull) return this;
    if(isAll){
      return this.replaceAll(sub, "");
    }
    return this.replaceFirst(sub, "");
  }

  /*
  * 替换子字符串
  * - Parameter from: 需要替换的子字符串
  * - Parameter replace: 替换的子字符串
  * - Parameter isAll: 是否替换查找到的所有子字符串
  * */
  String replaceSub(String from, String replace, {bool isAll = false}) {
    if (from.isEmptyOrNull) return this;
    if (replace.length < 0) return this;
    if (isAll) return this.replaceAll(from, replace);
    return this.replaceFirst(from, replace);
  }

  /*
  * 子字符串是否存在
  * */
  bool isContains(String sub) {
    if (this.isEmptyOrNull) return false;
    if (sub.isEmptyOrNull) return false;
    return this.contains(sub);
  }

  /*
  * 是否以子字符串开头
  * */
  bool isStart(String sub){
    if (this.isEmptyOrNull) return false;
    if (sub.isEmptyOrNull) return false;
    return this.startsWith(sub);
  }

  /*
  * 是否以子字符串结尾
  * */
  bool isEnd(String sub){
    if (this.isEmptyOrNull) return false;
    if (sub.isEmptyOrNull) return false;
    return this.endsWith(sub);
  }

  /*
  * 获取一个范围的子字符串
  * - Parameter start: 起始位置
  * - Parameter end: 截止位置 默认是到字符串的末尾位置
  * */
  String sub(int start, {int end}){
    if (this.isEmptyOrNull) return "";
    if (end == null) end = this.length - 1;
    return this.substring(start, end);
  }

  /*
  * 删除前后空格
  * */
  String trim(String content){
    if (this.isEmptyOrNull) return "";
    return content.trim();
  }

  /*
  * 随机获取一个字符串
  * - Parameter count: 位数
  * */
  String random({int count = 6}){
    String alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String left = '';
    for (var i = 0; i < count; i++) {
      left = left + alphabet[Random().nextInt(alphabet.length-1)];
    }
    return left;
  }

}

/*
* 字符串加密
* */
extension StringEncryption on String {

  String md5(){
    return "";
  }

  String base64(){
    return "";
  }

  String sha1(){
    return "";
  }

  String rsa(){
    return "";
  }

  String aes(){
    return "";
  }

  String des(){
    return "";
  }

}