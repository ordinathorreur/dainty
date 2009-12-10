package com.danieltodd.dainty {
	
	import flash.events.EventDispatcher;

	public interface IController {
		function setModel(m:EventDispatcher):void;
		function getModel():EventDispatcher;
		function setView(v:IView):void;
		function getView():IView;
	}
}
