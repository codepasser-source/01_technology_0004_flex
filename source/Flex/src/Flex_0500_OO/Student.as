package Flex_0500_OO
{
	public class Student
	{
		//声明对象属性
		private var _id:Number;
		private var _name:String;
		private var _age:int;
		
		public function Student()
		{
			
		}
		
		
		//声明 对象属性get set方法  注意： actionscript的特点 get set为关键字 调用时 直接【对象.属性】赋值或取值
		public function get id():Number{
			return this._id;		   
		}
		public function set id(id:Number):void{
		  this._id = id;
		}
		public function get name():String{
			 return this._name;
		}
		public function set name(name:String):void{
			 this._name = name;
		}
		public function get age():int{
			return this._age;
		}
		public function set age(age:int):void{
			this._age = age;
		}
		
	}
}