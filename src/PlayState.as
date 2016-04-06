package 
{
	import org.flixel.*;
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class PlayState extends FlxState
	{
		private var ball:Ball;
		private var p1:Paddle1;
		private var p2:Paddle2;
		private var DIST_FROM_WALL:int = 20;
		private var PADDLE_VERTICAL_CENTER:int = FlxG.height / 2 - 16;
		private var p1Score:int = 0;
		private var p2Score:int = 0;
		private var txt2:FlxText;
		private var txt1:FlxText;
		
		public function PlayState() 
		{
			ball = new Ball();
			
			p1 = new Paddle1(DIST_FROM_WALL, PADDLE_VERTICAL_CENTER);
			
			p2 = new Paddle2(FlxG.width - DIST_FROM_WALL - 8, PADDLE_VERTICAL_CENTER);
			
			txt1 = new FlxText(0, DIST_FROM_WALL / 2, FlxG.width/4, "Player1:" + p1Score)
			txt1.setFormat(null, 8,0xFFFFFFFF,"center")
			this.add(txt1);
			
			txt2 = new FlxText(3 * FlxG.width / 4, DIST_FROM_WALL / 2, FlxG.width/4, "Player2:" + p2Score)
			txt2.setFormat(null, 8,0xFFFFFFFF,"center")
			this.add(txt2);
			
			add(ball);
			add(p1);
			add(p2);
		}
		
		override public function update():void
		{
			super.update();
			if (isOverlap(ball, p1))
			{
				if (ball.getXSpeed() < 0)
				{
					ball.x = p1.x + p1.width;
				}
				else
				{
					ball.x = p1.x;
				}
				ball.setXSpeed(-ball.getXSpeed());
			}
			
			if (isOverlap(ball, p2))
			{
				if (ball.getXSpeed() < 0)
				{
					ball.x = p2.x + p2.width;
				}
				else
				{
					ball.x = p2.x;
				}
				ball.setXSpeed(-ball.getXSpeed());
			}
			
			hitWall();
		}
				
		private function isOverlap(b:Ball, p:Paddle):Boolean
		{
			if ((p.y <= b.y && b.y <= p.y + p.height) &&
					(p.x <= b.x && b.x <= p.x + p.width)) {
						p.play("Hit");
						return true;
					}
			return false;
		}
		
		private function hitWall():void
		{
			if (ball.x <= 0)
			{
				// hit left wall
				p2Score++;
				
			} 
			else if (ball.x >= FlxG.width - ball.width )
			{
				// hit right wall
				p1Score++;
			}
			txt1.text = "Player1:" + p1Score;
			txt2.text = "Player2:" + p2Score;
			if (p1Score == 5) {
				// switch state
				FlxG.switchState(new EndState("Player1", p1Score));
			}
			else if (p2Score == 5)
			{
				FlxG.switchState(new EndState("Player2", p2Score));
			}
		}
		
	}

}