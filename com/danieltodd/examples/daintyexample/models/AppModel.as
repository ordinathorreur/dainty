package com.danieltodd.examples.daintyexample.models
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class AppModel extends EventDispatcher
	{
		public static const STATE_1:String = "state1"
		public static const STATE_2:String = "state2";
		
		protected var _state:String = STATE_1;
		
		public function AppModel(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public function changeState(value:String = STATE_1):void{
			if(_state == value){return;}
			trace("Changing state in AppModel");
			_state = value;
			dispatchEvent(new Event(Event.CHANGE));
		}
		
		public function get state():String{
			return _state;
		}
	}
}