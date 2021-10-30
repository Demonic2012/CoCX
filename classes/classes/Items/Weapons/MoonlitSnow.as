package classes.Items.Weapons 
{
import classes.Items.Weapon;

public class MoonlitSnow extends Weapon
	{
		
		public function MoonlitSnow() 
		{
			super(
				"Moonlit Snow","Moonlit Snow","Moonlit Snow","a Moonlit Snow","slash",40,2560,
				"This blessed katana is made in shining steel and heavily decorated with silver and blue sapphires. When used by a pure-hearted knight, the divine will within guides each strike, making it much deadlier.", "Hybrid", "Dueling"
			);
		}
		override public function get attack():Number {
			var boost:int = 0;
			boost += Math.round((100-game.player.cor) / 10);
			return (12 + (2 * boost)); 
		}
	}

}