package Flex_0400_Flow
{
	public class ASFlowTest
	{
		public function ASFlowTest()
		{
			
			var i:int = 1;
			
			if(i>0){
			    trace("正数");
			}else if(i<0){
				trace("负数");
			}else{
				trace("零");
			}
			
			switch(i){
			 case 0:
				 trace("i==0");
				 break;
			 case 2:
				 trace("i==2");
				 break;
			 default:
				 trace("default");
				 break;
			}
			
			
			i==3 ? trace("等于3") : trace("不等于3");
			
			
		}
	}
}