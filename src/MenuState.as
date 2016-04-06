package 
{
    import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	
    public class MenuState extends FlxState
    {
        override public function MenuState():void
	{
		var txt:FlxText
		txt = new FlxText(0, (FlxG.width / 2) - 80, FlxG.width, "Flixel Tutorial Game")
		txt.setFormat(null,16,0xFFFFFFFF,"center")
		this.add(txt);
			
		txt = new FlxText(0, FlxG.height  -24, FlxG.width, "PRESS X TO START")
		txt.setFormat(null, 8, 0xFFFFFFFF, "center");
		this.add(txt);
        }
        override public function update():void
        {
            if (FlxG.keys.pressed("X"))
            {
                FlxG.switchState(new PlayState());
            }
            super.update();
        }
    }
}