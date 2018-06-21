package Flex_0200_Operator
{
	public class ASOperatorTest
	{
		public function ASOperatorTest()
		{
			
			var a:int = 10;
			var b:int = 3;
			
			trace(a+b); //加
			trace(a-b); //减
			trace(a*b); //乘
			trace(a/b); //除
			trace(a%b); //模
			
			trace(a>=b);
			trace(a<=b); 
			trace(a!=b);
			trace(a==b);
			
			trace(a is int);//判断基本类型
			
			b = a as Number; //类型转换
			
			trace(b);  
			trace(b is Number); 
		}
	}
}