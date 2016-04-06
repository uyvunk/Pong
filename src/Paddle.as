package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class Paddle extends FlxSprite
	{
		protected var SPEED:int = 450;
		
		public function Paddle(X:Number = 0, Y:Number = 0) 
		{
			super(X, Y);
			addAnimation("Hit", [0, 1, 0], 10, false);
		}
		
		override public function update():void
		{
			super.update();
			
			velocity.x = 0;
			velocity.y = 0;
					
			if (y < 0)
			{
				y = 0;
			}
			
			if (y > FlxG.height - height)
			{
				y = FlxG.height - height;
			}
			
		}
	}

}