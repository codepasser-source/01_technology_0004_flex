package service
{
	import mx.rpc.AsyncToken;

	public class SayService extends RemoteService
	{
		private static const FLEXSERVICE_NAME:String="SayService";

		public function SayService(fault:Function=null)
		{
			super(FLEXSERVICE_NAME, fault);
		}

		public function sayHello(name:String, result:Function):AsyncToken
		{
			return invoke("sayHello", [name], result);
		}

	}
}
