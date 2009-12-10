package com.danieltodd.examples.daintyexample 
{
	import com.danieltodd.examples.daintyexample.controllers.AppController;
	import com.danieltodd.examples.daintyexample.models.AppModel;
	import com.danieltodd.examples.daintyexample.views.AppView;
	
	import flash.display.Sprite;
	
	public class DaintyExample extends Sprite
	{

		protected var _model:AppModel;
		protected var _view:AppView;
		protected var _controller:AppController;
				
		public function DaintyExample()
		{
			super();
			init();
		}
		
		protected function init():void{
			_model = new AppModel();
			_controller = new AppController(_model);
			_view = new AppView(_model, _controller);
			_controller.setView(_view);
			addChild(_view);
		}

	}
}