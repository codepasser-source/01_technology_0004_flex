package Flex_1500_Communication
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.controls.Alert;
	import mx.rpc.AsyncToken;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class Client extends EventDispatcher 
	{
		public function Client(target:IEventDispatcher=null)
		{
			super(target);
			
			this.addEventListener(ResultEvent.RESULT,this.success_listenerHander);
			this.addEventListener(FaultEvent.FAULT,this.fault_listenerHander);
			
		}
		
		public function sendRequest(params :Object = null):void{
		
			var httpService:HTTPService = new HTTPService();              //创建http 请求对象
			
			var responder : Responder = new Responder(onSuccess,onfault); //注册  成功和失败事件处理
			
			httpService.url="http://localhost/flexservice/UserAction";          //设置请求地址
			
			var call:AsyncToken = httpService.send(params);               //发送请求
						
			call.addResponder(responder);                                  //获得相应对象
	     }
		
		public function onSuccess(event:ResultEvent):void{              //成功事件
			
		     dispatchEvent(event);
			trace("SUCCESS提示");
		}
		
		public function onfault(event:FaultEvent):void{                //失败方法
			dispatchEvent(event);
			trace("fault提示");
		}
		
		
		
		protected function success_listenerHander(event:ResultEvent):void{
			Alert.show("成功","success");
			Alert.show(event.result.toString(),"success");
		}
		protected function fault_listenerHander(event:FaultEvent):void{
			Alert.show("失败","fault");
		}
    }
	
}