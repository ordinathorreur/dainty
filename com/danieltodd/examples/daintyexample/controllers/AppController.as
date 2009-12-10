package com.danieltodd.examples.daintyexample.controllers
{
	import com.danieltodd.dainty.AbstractController;
	import com.danieltodd.examples.daintyexample.models.AppModel;
	import com.danieltodd.examples.daintyexample.views.AppView;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	public class AppController extends AbstractController
	{
		public function AppController(m:EventDispatcher)
		{
			super(m);
		}
		
		public function toggleState():void{
			var state:String = appModel.state;
			if(state == AppModel.STATE_2){
				appModel.changeState(AppModel.STATE_1);
			}else{
				appModel.changeState(AppModel.STATE_2);
			}
		}

		protected function stateChangeHandler(e:Event):void{
			trace("Controller picked up model state change");
			// you could also update your view from here if you needed to cominicate with other objects first
		}
		
		override public function setModel(m:EventDispatcher) : void{
			super.setModel(m);
			addModelListeners(m);
		}
		
		protected function addModelListeners(m:EventDispatcher):void{
			m.addEventListener(Event.CHANGE, stateChangeHandler, false, 0, true)
		}
		
		protected function get appModel():AppModel{
			return AppModel(super.getModel());
		}
		
		protected function get appView():AppView{
			return AppView(super.getView());
		}
	}
}