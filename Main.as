package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author Ozzie
	 */
	public class Main extends Sprite
	{
		public var bobHP:int = 100;
		public var lasseHP:int = 100;
		public var bobDamage:int;
		public var lasseDamage:int;
		public var roundNr:int;
		public var text:TextField = new TextField();
		public var text2:TextField = new TextField();
		public var t:TextField = new TextField();
		//public var currentDefence:int;
		public const ATTACK:int = 10;
		public const DEFENCE:int = 5;
		public const BOB:String = "Bob";
		public const LASSE:String = "Lasse";
		
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			addChild(text);
			addChild(t);
			text.width = stage.stageWidth
			text.height = stage.stageHeight
			while(bobHP > 0 && lasseHP > 0)
			{
				roundNr ++;
				bobDamage = (Math.random() * ATTACK + 1);
				lasseDamage = (Math.random() * ATTACK + 1);
				bobHP -= (lasseDamage );// - DEFENCE);
				lasseHP -= (bobDamage );// - DEFENCE);
				text.appendText ("Round " + roundNr + ": \n")
				text.appendText (BOB + " did " + bobDamage + " damage to " + "Lasse" + ". " + LASSE + " now have" + lasseHP + " HP left.\n")
				text.appendText (LASSE + " did " + lasseDamage + " damage to " + BOB + ". " + BOB + " now have" + bobHP + " HP left.\n\n")
			}
		}	
		
	}
	
}