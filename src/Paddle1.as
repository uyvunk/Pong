package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class Paddle1 extends Paddle
	{
		[Embed(source="../data/P1.png")]
		private var p1Png:Class;
		
		public function Paddle1(X:Number = 0, Y:Number = 0) 
		{
			super(X, Y);
			loadGraphic(p1Png, true, false, 8, 32);
		}
		
		override public function update():void
		{
			super.update();
			
			if (FlxG.keys.W)
			{
				velocity.y  -= SPEED;
			}
			else if (FlxG.keys.S)
			{
				velocity.y  += SPEED;
			}
		}
		
	}

}