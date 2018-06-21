package Flex_0300_DataFiled
{
	import mx.collections.ArrayCollection;

	public class ASDataTypeTest
	{
		public function ASDataTypeTest()
		{
			
			var v1:int = 9;        //整型 
			trace(v1);
			var v2:uint = 1.5;     //长整型 只能是正数 
			trace(v2);
			var v3:Boolean=true; //boolean
			var v4:Number=4.5;  //浮点型
			var v5:String="string";//字符串
			var v6:String='string'; //字符串可以用单引号
			var v7:*=3; // *代表任意类型
			trace(v7);
			v7='v7';
			trace(v7);
			
			var v8;
			trace(v8);//输出undefined
			
			var v9:String;
			trace(v9);
			var v10:Array=[1,2,3,4,5];//集合
			trace(v10);
			trace(v10[1]);
			
			var v11:Object={id:3,name:"tom3",age:18};//对象
			trace(v11.id);

			//ArrayColection类型 常用于控件数据加载
			var v12 : ArrayCollection = new ArrayCollection([{id:1,name:"tom1",age:18}]);
			v12.addItem({id:2,name:"tom2",age:18});
			v12.addItem(v11);
			trace(v12.length);
			trace(v12.getItemAt(1).name);
			
			var v13:Array = [{name:'tom1'},{name:'tom2'}]
			trace(v13[0].name);
		}
	}
}