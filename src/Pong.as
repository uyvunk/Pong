package 
{
	import org.flixel.*;
	
	/**
	 * ...
	 * @author Vu Nguyen
	 */
	
	[SWF(width = "640",height="480",backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]
	public class Pong extends FlxGame
	{
		
		public function Pong() 
		{
			super(320, 240, PlayState, 2);
			forceDebugger = false;
		}
		
	}

}