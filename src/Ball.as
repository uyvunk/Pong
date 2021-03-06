package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class Ball extends FlxSprite
	{
		[Embed(source="../data/ball.png")]
		private var ballPng:Class;
		[Embed(source="../data/hit.mp3")]
		private var hitSound:Class;
		
		private var X_SPEED:int = 140;
		private var Y_SPEED:int = 140;
		
		public function Ball(X:Number = 0, Y:Number = 0) 
		{
			super(X, Y);
			loadGraphic(ballPng, true, false, 8, 8);
			addAnimation("Play", [0, 1], X_SPEED / 20, false);
			addAnimation("Hit", [2,1], 10, false);
		}
		
		override public function update():void
		{
			super.update();
			
			velocity.x = 0;
			velocity.y = 0;
			
			changeDirection();
			velocity.x += X_SPEED;
			velocity.y += Y_SPEED;
			play("Play");
		}
		
		public function changeDirection():void
		{
			if (x < 0 || (x > FlxG.width - width))
			{
				if (x < 0)
				{
					x = 0;
				} 
				else 
				{
					x = FlxG.width - width;
				}
				X_SPEED = -X_SPEED;
				FlxG.play(hitSound);
			} 
			else if (y < 0 || (y > FlxG.height - height))
			{
				if (y < 0)
				{
					y = 0;
				} 
				else 
				{
					y = FlxG.height - height;
				}
				Y_SPEED = -Y_SPEED;
				FlxG.play(hitSound);
			}
		}
		
		public function getXSpeed():int
		{
			return X_SPEED;
		}
		
		public function getYSpeed():int
		{
			return Y_SPEED;
		}
		
		public function setXSpeed(newSpeed:int):void
		{
			X_SPEED = newSpeed;
		}
		
		public function setYSpeed(newSpeed:int):void
		{
			Y_SPEED = newSpeed;
		}
		
	}

}