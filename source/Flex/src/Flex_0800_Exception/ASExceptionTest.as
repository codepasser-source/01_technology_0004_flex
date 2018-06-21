package Flex_0800_Exception
{
	import flash.errors.EOFError;
	
	import mx.controls.Alert;

	public class ASExceptionTest
	{
		public function ASExceptionTest()
		{
			var  array :Array =[1,2,3,4];
			try{
				throw new EOFError();
			}catch(error:EOFError){
				Alert.show(error.toString(),"error",4);
			}finally{
				Alert.show("finally","error",4);
			}

		}
	}
}