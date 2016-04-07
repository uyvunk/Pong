package 
{
	import flash.media.Sound;
    import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	
    public class MenuState extends FlxState
    {
		[Embed(source="../data/startup.mp3")]
		private var startSound:Class;
		
		private var playSound:Boolean = true;
		
        override public function MenuState():void
	{
		var txt:FlxText
		txt = new FlxText(0, (FlxG.width / 2) - 80, FlxG.width, "PONG 2016")
		txt.setFormat(null,16,0xFC8F00,"center")
		this.add(txt);
		
		txt = new FlxText(40, FlxG.height  -50, FlxG.width - 40, ">> Player1: Use W/S to move your paddle")
		txt.setFormat(null,8,0xFC0000,"left")
		this.add(txt);
		
		txt = new FlxText(40, FlxG.height  -40, FlxG.width - 40, ">> Player2: Use UP/DOWN to move your paddle")
		txt.setFormat(null,8,0x7EFC00,"left")
		this.add(txt);
			
		txt = new FlxText(0, FlxG.height  -24, FlxG.width, "PRESS X TO START")
		txt.setFormat(null, 10, 0xFFFFFFFF, "center");
		this.add(txt);
		
    }
	
	override public function update():void
	{
		super.update();
		if (playSound)
		{
			FlxG.play(startSound);
			playSound = false;
		}
		
		if (FlxG.keys.pressed("X"))
		{
			FlxG.switchState(new PlayState());
		}
	}
    }
}