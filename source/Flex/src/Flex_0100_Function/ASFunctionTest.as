package Flex_0100_Function
{
	public class ASFunctionTest
	{
		public function ASFunctionTest()
		{
			
			
			var traceFunction1:Function = function (sParam1:String):void //匿名函数
			{ 
				trace(sParam1);
			};
			
			var traceArray:Array=new Array(); 
			traceArray[0]  = function (sParam2:String) :void
			{ 
				trace(sParam2); 
			};
			
			traceFunction1("function1");
			traceArray[0]("traceArray function");
			
			
			
		}
		
		public function f(sParam :String = "defaultPara") :void //带默认值 函数
		{ 
			trace(sParam);
		}
		
		public function f2(...args) :void   //可变参数  函数
		{ 
			trace(args.length);
		}
		

	}
}