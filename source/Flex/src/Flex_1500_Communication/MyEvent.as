package Flex_1500_Communication
{
	import flash.events.Event;
	
	public class MyEvent extends Event
	{
		
		public static const MYEVENT:String = "myevent";
		private var _eventObj : int ;
		
		public function MyEvent(type:String,eventObj:int, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			this.eventObj = eventObj;
		}
		
		public function set eventObj (eventObj:int):void{
		
		  this._eventObj = eventObj;
		}
		
		public function get eventObj ():int{
		  return this._eventObj;
		}
		
	}
}