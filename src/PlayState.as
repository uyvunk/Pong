package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class PlayState extends FlxState
	{
		private var ball:FlxSprite;
		private var p1:FlxSprite;
		private var p2:FlxSprite;
		private var PADDLE_SPEED:int = 3;
		
		public function PlayState() 
		{
			var background:FlxSprite;
			background = new FlxSprite();
			background.makeGraphic(100, 100);
			add(background);
		}
		
		override public function update():void
		{
			super.update();
			
			if (event.keyCode == 38) {
					// up arrow
					p2.y -= PADDLE_SPEED;
				}
				
				if (event.keyCode == 40) {
					// down arrow
					p2.y += PADDLE_SPEED;
				}
				
				if (event.keyCode == 87) {
					// W key
					p1.y -= PADDLE_SPEED;
				}
				
				if (event.keyCode == 83) {
					// S key
					p1.y += PADDLE_SPEED;
				}
		}
		
	}

}