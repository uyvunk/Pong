package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	public class EndState extends FlxState
	{
		[Embed(source="../data/win.mp3")]
		private var winSound:Class;
		private var playSound:Boolean = true;
		
		
		public function EndState(p:String, s:int) 
		{
			super();
			var txt1:FlxText;
			txt1 = new FlxText(0, (FlxG.width / 2) - 80, FlxG.width, "WINNER:  " + p 
																	+ "\nScore: " + s);
			txt1.setFormat(null,16,0xFC8F00,"center")
			this.add(txt1);
			
			var txt2:FlxText = new FlxText(0, FlxG.height  -24, FlxG.width, "PRESS X TO RESTART")
			txt2.setFormat(null, 8, 0xFFFFFFFF, "center");
			this.add(txt2);
		}
		
		 override public function update():void
        {
            super.update();
			if (playSound)
			{
				FlxG.play(winSound);
				playSound = false;				
			}
			if (FlxG.keys.pressed("X"))
            {
                FlxG.switchState(new PlayState());
            }
        }
		
	}

}