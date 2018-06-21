package service
{
	import mx.core.FlexGlobals;
	import mx.rpc.AbstractOperation;
	import mx.rpc.AsyncToken;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.remoting.mxml.RemoteObject;

	public class RemoteService
	{
		protected var remoteObject:RemoteObject
		protected var preOperations:Array=new Array();

		public function RemoteService(roName:String, fault:Function=null)
		{
			remoteObject=new RemoteObject(roName);
			remoteObject.initialized(FlexGlobals.topLevelApplication, roName);
		}

		protected function invoke(methodName:String, parameters:Array, result:Function, fault:Function=null):AsyncToken
		{
			var preToken:AsyncToken=new AsyncToken();
			preOperations.push({
				methodName: methodName,
				parameters: parameters,
				result: result,
				fault: fault,
				token: preToken
			});
			var preOperation:Object=null;
			if (methodName == null)
			{
				preOperation=preOperations.pop();
				if (preOperation == null)
				{
					return new AsyncToken();
				}
				methodName=preOperation.methodName;
				parameters=preOperation.parameters;
				result=preOperation.result;
				fault=preOperation.fault;
			}

			// invoke remote method.
			var operation:AbstractOperation=remoteObject.getOperation(methodName);
			operation.addEventListener(ResultEvent.RESULT, onResult);
			operation.addEventListener(FaultEvent.FAULT, onFault);
			operation.arguments=parameters;

			var token:AsyncToken=operation.send();
			token.faultFunction=fault;
			token.resultFunction=result;

			// set the token properties to current token.
			if (methodName == null && preOperation != null)
			{
				for (var property:String in preOperation)
				{
					if (!token.hasOwnProperty(property))
					{
						token[property]=preOperation[property];
					}
				}
			}
			return token;
		}

		protected function onResult(event:ResultEvent):void
		{
			if (event.token.resultFunction != null)
			{
				event.token.resultFunction(event);
			}
		}

		protected function onFault(event:FaultEvent):void
		{
//			if (event.token.resultFunction != null)
//			{
//				event.token.resultFunction(event);
//			}
		}
	}
}
