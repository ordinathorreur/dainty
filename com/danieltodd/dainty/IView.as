package com.danieltodd.dainty {
	
	import flash.events.EventDispatcher;

	public interface IView {
		function setModel(m:EventDispatcher):void
		function getModel():EventDispatcher;	
		function setController(c:IController):void;
		function getController():IController;
	}
}
