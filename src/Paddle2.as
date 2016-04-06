package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class Paddle2 extends Paddle
	{
		[Embed(source="../data/P2.png")]
		private var p2Png:Class;
		
		public function Paddle2(X:Number = 312, Y:Number = 0) 
		{
			super(X, Y);
			loadGraphic(p2Png, true, false, 8, 32);
			
		}
		
		override public function update():void
		{
			super.update();
			
			if (FlxG.keys.UP)
			{
				velocity.y -= SPEED;
			}
			else if (FlxG.keys.DOWN)
			{
				velocity.y += SPEED;
			}
			
		}
		
	}

}