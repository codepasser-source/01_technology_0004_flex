package Flex_0600_String
{
	public class ASStringTest
	{
		public function ASStringTest()
		{
			//String 类常用的方法
			var s :String = "java.baishui.com";
			
			for(var i:int=0;i<s.length;i++){
				trace(s.charAt(i));  //位置的字符
				trace(s.charCodeAt(i));//位置字符 的ASCII 码
			}
			
			trace(s.substr(0,3));//截取字符串
			trace(s.concat("ssss"));//连接字符串
			trace(s.toUpperCase());//大写
			trace(s.indexOf("j"));//位置
			trace(s.lastIndexOf("s"));//最后位置
			
			

		}
	}
}