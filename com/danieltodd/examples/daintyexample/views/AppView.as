package com.danieltodd.examples.daintyexample.views
{
	import com.danieltodd.dainty.AbstractView;
	import com.danieltodd.dainty.IController;
	import com.danieltodd.examples.daintyexample.controllers.AppController;
	import com.danieltodd.examples.daintyexample.models.AppModel;
	import com.danieltodd.examples.daintyexample.views.components.Button;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	
	public class AppView extends AbstractView
	{
		protected var _button:Button;
		protected var _textField:TextField;
		
		public function AppView(m:EventDispatcher, c:IController)
		{
			super(m, c);
			init();
		}
		
		protected function init():void{
			_button = new Button();
			_button.addEventListener(MouseEvent.CLICK, buttonClickHandler);
			addChild(_button);
			
			_textField = new TextField();
			addChild(_textField);
			
			update();
		}
		
		protected function update(e:Event = null):void{
			if(appModel.state == AppModel.STATE_1){
				_textField.text = "State 1";
			}else if(appModel.state == AppModel.STATE_2){
				_textField.text = "State 2";
			}
			layout();
		}
		
		protected function layout():void{
			_textField.x = _textField.y = 5;
			_textField.width = 50;
			_textField.height = 20;
			
			_button.x = _textField.x;
			_button.y = _textField.y + _textField.height + 5;
		}
		
		protected function buttonClickHandler(e:MouseEvent):void{
			trace("Clicked button");
			appController.toggleState();
		}
		
		protected function addModelListeners(m:EventDispatcher):void{
			m.addEventListener(Event.CHANGE, update, false, 0, true);
		}
		
		protected function get appModel():AppModel{
			return AppModel(super.getModel());
		}
		
		protected function get appController():AppController{
			return AppController(super.getController());
		}
		
		override public function setModel(m:EventDispatcher) : void{
			addModelListeners(m);
			super.setModel(m);
		}

	}
}