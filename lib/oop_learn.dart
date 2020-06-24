
//定义一个Dart类，所有的类都继承于Object

class Person{
  String name;
  int age;
  //构造方法
  Person(this.name,this.age);

  @override
  String toString(){
    return 'name:$name,age:$age';
  }
}

class Student extends Person{
  //定义变量，变量前有个下划线，标识为私有变量
  String _school;
  String city;
  String country;
  String name;
  //构造方法
  //通过this._school初始化自有参数
  //name,age交给父类进行初始化
  //city为可选参数
  //country为默认参数
  Student(this._school,String name, int age,{this.city,this.country='China'})
      : name = '$country.$city',
      //如果父类没有默认的构造方法（无参的构造方法），则需要在初始列表中调用父类的构造方法进行初始化
      super(name, age){
        print('构造方法体不是必须的');
  }

  //命名构造方法 ：【类名.方法名】
  //使用命名构造方法为类实现多个构造方法
  Student.cover(Student stu,this.city) :super(stu.name,stu.age){
    print('命名构造方法');
  }

  factory Student.stu(Student stu){
    return Student(stu._school,stu.name,stu.age);
  }

}

class Logger{
  static Logger _cache;
   //工厂构造方法    
  factory Logger(){
    if(_cache==null){
      _cache = Logger._internal();
    }
    return _cache;
  }
  Logger._internal();

  void log(String msg){
    print(msg);
  }
}