package ;
import flixel.FlxSprite;

/**
 * @author galoyo
 */

class ObjectGrassWeed extends FlxSprite
{
	private var _startx:Float;
	private var _starty:Float;
	
	public function new(x:Float, y:Float, id:Int) 
	{		
		super(x, y);

		_startx = x;
		_starty = y;
		
		// At PlayStateCreateMap.hx - createLayer3Sprites() function, an ID is sometimes passed to the PlayStateAdd.hx function. When passed, it then always passes its ID var to a class. In this example, the ID of 1 can be the first appearence of the mob while a value of 2 is the same mob but using a different image or other property. An ID within an "if command" can be used to give a mob a faster running ability or a different dialog than the same mob with a different ID.
		ID = id;
		
		loadGraphic("assets/images/objectGrassWeed" + id + ".png", false, 32, 32);	
		
		immovable = true;
		
	}
	
	override public function update(elapsed:Float):Void 
	{
		super.update(elapsed);
	}
	
}