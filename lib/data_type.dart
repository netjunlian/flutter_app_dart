import 'package:flutter/material.dart';

//常用数据类型
class DataType extends StatefulWidget {
  @override
  _DataTypeState createState() => _DataTypeState();
}

class _DataTypeState extends State<DataType> {
  @override
  Widget build(BuildContext context) {
    _numType();
    _stringType();
    _boolType();
    _listType();
    _map();
    _tips();
    return Container(
      child: Text('常用数据类型，请查看控制台输出'),
    );
  }

  //数字类型
  void _numType() {
    num num1 = -1.0; //数字类型的父类
    num num2 = 2; //num类型即可以接受符点类型，又可以接受整形
    int int1 = 3;
    double d1 = 3.14;
    print("num:$num1,num:$num2,int:$num1,double:$d1");
    print(num1.abs());
    print(num1.toInt());
  }

  _stringType() {
    String str1 = '这是一个字符串，用单引号';
    String str2 = "这是一个字符串，用双引号";
    String str3 = 'str1:$str1,str2:$str2';
    String str4 = 'str1:' + str1 + ',str2:' + str2;
    print(str3);
    print(str4);
    String str5 = "我是一个中国人，我爱中国！";
    print(str5.substring(8, 12));
    print(str5.indexOf('中国'));
  }

  //布尔类型
  _boolType() {
    bool success = true, fail = false;
    print(success);
    print(fail);
    print(success || fail);
    print(success && fail);
  }

  _listType() {
    //集合的初始化
    List list1 = [1, 2, 3, '集合'];
    print(list1);
    List<int> list2 = [11, 12, 13, 14];
    List list3 = [];
    list3.add('3333');
    list3.addAll(list1);
    print(list3);
    List list4 = List.generate(3, (index) => index * 3);
    print(list4);
    //集合遍历
    for (int i = 0; i < list4.length; i++) {
      print(list4[i]);
    }
    for (var o in list3) {
      print(o);
    }
    list3.forEach((element) {
      print(element);
    });
  }

  //Map用法及遍历
  _map() {
    print("--------mapType--------");
    Map names = {'xiaoming': '小明', 'Julia': '朱莉'};
    print(names);
    Map ages = {};
    ages['xiaoming'] = 18;
    ages['Julia'] = 20;
    print(ages);
    //Map遍历
    ages.forEach((key, value) {
      print('$key,$value');
    });

    //key和value颠倒的map
    Map ages2 = ages.map((k, v) {
      return MapEntry(v, k);
    });
    print(ages2);

    for (var key in ages.keys) {
      print('$key ${ages[key]}');
    }
  }

  //dynamic,var,object三者的区别
  _tips(){
    print('------tips-------');
    dynamic x = 'hello';  //动态数据类型，dart语法检查失效，不要直接去使用dynamic，以免产生不必要的隐患
    print(x.runtimeType);
    print(x);

    x = 123;
    print(x.runtimeType);
    print(x);

    var a = 'good'; //第一次赋值什么类型，变量就是什么类型
    print(a.runtimeType);
    print(a);

    Object object1 = '111'; //Object类是所有类的基类
    print(object1.runtimeType);
    print(object1);

    object1 = 123;
    print(object1.runtimeType);
    print(object1);


  }
}
