package com.danieltodd.examples.daintyexample.views.components
{
	import flash.display.Sprite;
	import flash.text.TextField;
	
	public class Button extends Sprite
	{
		protected var _textField:TextField;
		
		public function Button()
		{
			super();
			init();
			draw();
		}
		
		protected function init():void{
			_textField = new TextField();
			_textField.textColor = 0xFFFFFF;
			mouseChildren = false;
			buttonMode = true;
		}
		
		protected function draw():void{
			graphics.clear();
			graphics.beginFill(0x6790af, 1);
			graphics.drawRoundRect(0, 0, 50, 20, 3, 3);
			graphics.endFill();
			
			addChild(_textField);
			_textField.width = 50;
			_textField.height = 20;
			_textField.text = "Toggle";
		}
	}
}