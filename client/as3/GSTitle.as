﻿package as3 {
	
	import flash.events.*;
	import flash.system.*;
	
	public class GSTitle extends GameState{

		public function GSTitle(gsm:GameStateManager) {
			super(gsm);
			
			bttnJoin.addEventListener(MouseEvent.CLICK, HandleJoin);
			bttnCredits.addEventListener(MouseEvent.CLICK, HandleCredits);
			bttnInstructions.addEventListener(MouseEvent.CLICK, HandleInstructions);
			bttnQuit.addEventListener(MouseEvent.CLICK, HandleQuit);
		}
		
		public function HandleJoin(e:MouseEvent):void{
			gsm.SwitchToJoin();
		}
		
		public function HandleCredits(e:MouseEvent):void{
			gsm.SwitchToCredits();
		}
		
		public function HandleInstructions(e:MouseEvent):void{
			gsm.SwitchToInstructions();
		}
		
		public function HandleQuit(e:MouseEvent):void{
			fscommand("quit");
		}
		
		public override function Update():void{
			
		}
	}
}
