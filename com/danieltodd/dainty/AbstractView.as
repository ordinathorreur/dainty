package com.danieltodd.dainty {
	
	import flash.display.Sprite;
	import flash.events.EventDispatcher;

	import com.danieltodd.dainty.IView;

	public class AbstractView extends Sprite implements IView {
		
		private var _model:EventDispatcher;
		private var _controller:IController;

		public function AbstractView(m:EventDispatcher, c:IController) {
			setModel(m);
			if(c != null){
				setController(c);	
			}
		}
		
		// note that this method is usually overridden in your subclass to return an appropriate default controller for that view
		protected function defaultController(m:EventDispatcher):IController{
			trace("returning a default controller, in this case null");
			return null;
		}
		
		public function setModel(m:EventDispatcher) : void {
			_model = m;
		}
		
		public function getModel():EventDispatcher {
			return _model;
		}
		
		public function setController(c:IController) : void {
			_controller = c;
			getController().setView(this);
		}
		
		public function getController():IController {
			if(_controller == null){
				setController( defaultController( getModel() ) );	
			}
			return _controller;
		}
	}
}
