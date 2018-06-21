package Flex_0500_OO.interfaces.impl
{
	import Flex_0500_OO.interfaces.IFlyInterFace;
	
	import mx.controls.Alert;
	
	public class MyFly implements IFlyInterFace
	{
		public function MyFly()
		{
		}
		
		public function fiy():void  //与 java 相同实现接口的方法
		{ 
			Alert.show("fly","implement",4);
		}

	}
}