/**
 * ...
 * @author Ormael
 */
package classes.Scenes.Monsters 
{

	import classes.*;
	import classes.Scenes.SceneLib;
	
	public class GolemTrueImproved extends AbstractGolem
	{
		public function backhand():void {
			outputText("The golem's visage twists into a grimace of irritation, and it swings its hand at you in a vicious backhand.");
			var damage:Number = int ((str + weaponAttack) - rand(player.tou) - player.armorDef);
			//Dodge
			if (damage <= 0 || (player.getEvasionRoll())) outputText(" You slide underneath the surprise swing!");
			else
			{
				if (hasStatusEffect(StatusEffects.Provoke)) damage = Math.round(damage * statusEffectv2(StatusEffects.Provoke));
				outputText(" It hits you square in the chest. ");
				damage = player.takePhysDamage(damage, true);
			}
		}
		
		public function overhandSmash():void {
			outputText("Raising its fist high overhead, the golem swiftly brings it down in a punishing strike!");
			
			var damage:Number = 100 + int((str + weaponAttack) - rand(player.tou) - player.armorDef);
			if (damage <= 0 || rand(100) < 25 || player.getEvasionRoll()) outputText(" You're able to sidestep it just in time.");
			else
			{
				if (hasStatusEffect(StatusEffects.Provoke)) damage = Math.round(damage * statusEffectv2(StatusEffects.Provoke));
				outputText(" The concussive strike impacts you with bonecrushing force. ");
				damage = player.takePhysDamage(damage, true);
			}
		}
		
		override protected function performCombatAction():void
		{
			if ((this.lust100 >= 85 && rand(2) == 0) || this.lust100 < 85) {
				if (hasStatusEffect(StatusEffects.Provoke)) {
					var choiceP:Number = rand(3);
					if (choiceP == 0) eAttack();
					if (choiceP == 1) backhand();
					if (choiceP == 2) overhandSmash();
				}
				else {
					if (this.HPRatio() < 0.6) {
						var choice2:Number = rand(5);
						if (choice2 < 3) eAttack();
						if (choice2 == 3) backhand();
						if (choice2 == 4) overhandSmash();
					}
					else if (this.HPRatio() < 0.8) {
						var choice1:Number = rand(4);
						if (choice1 < 3) eAttack();
						if (choice1 == 3) backhand();
					}
					else eAttack();
				}
			}
		}
		
		override public function defeated(hpVictory:Boolean):void
		{
			if (player.hasStatusEffect(StatusEffects.SoulArena)) SceneLib.combat.finishCombat();
			else SceneLib.campMakeWinions.postFightGolemOptions3();
		}
		
		public function GolemTrueImproved() 
		{
			super(false);
			this.a = "the ";
			this.short = "improved true golem";
			this.imageName = "improved true golem";
			this.long = "You're currently fighting improved true golem. It's seven and half feet tall without any sexual characteristics, it stone body lacking any cracks dummy ones possesed and using it bare stone fists to smash enemies.";
			initStrTouSpeInte(200, 160, 120, 10);
			initWisLibSensCor(10, 10, 10, 50);
			this.tallness = 90;
			this.drop = NO_DROP;
			this.level = 42;
			this.bonusHP = 500;
			this.additionalXP = 500;
			this.weaponName = "stone fists";
			this.weaponVerb = "smash";
			this.weaponAttack = 55;
			this.armorName = "stone";
			this.armorDef = 55;
			this.armorMDef = 11;
			this.createPerk(PerkLib.RefinedBodyI, 0, 0, 0, 0);
			this.createPerk(PerkLib.TankI, 0, 0, 0, 0);
			checkMonster();
		}
		
	}

}