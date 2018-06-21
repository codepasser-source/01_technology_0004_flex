package Flex_0900_Event.Event_0300_ASEvent 
{
	import flash.events.Event;
	
	public class MyEvent extends Event
	{
		
		public static const MYEVENT : String = "myevent";		
			
		private var _eventObj : int; //定义事件类型 在触发时根据值判断接下来的操作
		
		public function MyEvent(type:String,eventObj:int,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		    this.eventObj = eventObj;
		}
		
		
		public function set eventObj(eventObj:int):void{
			this._eventObj = eventObj;
		}
		
		public function get eventObj():int{
		   return this._eventObj;
		}
		
	}
}