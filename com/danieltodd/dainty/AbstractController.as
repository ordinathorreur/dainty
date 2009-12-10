package com.danieltodd.dainty {
	
	import flash.events.EventDispatcher;

	import com.danieltodd.dainty.IController;
	
	public class AbstractController implements IController {
		
		private var _model : EventDispatcher;
		private var _view : IView;
		
		public function AbstractController(m:EventDispatcher) {
			setModel(m);
		}
		
		public function setModel(m:EventDispatcher) : void {
			_model = m;
		}
		
		public function getModel():EventDispatcher {
			return _model;
		}
		
		public function setView(v:IView):void {
			_view = v;
		}
		
		public function getView():IView {
			return _view;
		}
	}
}
