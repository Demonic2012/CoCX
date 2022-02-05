package classes.Scenes.Areas.HighMountains 
{
import classes.*;
import classes.GlobalFlags.kFLAGS;
import classes.Items.Armors.LustyMaidensArmor;
import classes.Items.Armors.SuccubusArmor;
import classes.Scenes.Areas.Ashlands.PhoenixSquadAshland;
import classes.Scenes.Areas.VolcanicCrag.PhoenixPlatoon;
import classes.Scenes.UniqueSexScenes;

public class PhoenixScene extends BaseContent
	{
		public var uniquuuesexscene:UniqueSexScenes = new UniqueSexScenes();
		
		//" + (player.cocks.length == 1 ? "": "") + "
		public function PhoenixScene() 
		{
		}
		
		public function encounterPhoenix1():void {
			if (flags[kFLAGS.PHOENIX_ENCOUNTERED] <= 0) encounterPhoenixFirstTime1();
			else encounterPhoenixRepeat1();
		}
		
		public function encounterPhoenix2():void {
			if (flags[kFLAGS.PHOENIX_ENCOUNTERED] <= 0) encounterPhoenixFirstTime2();
			else encounterPhoenixRepeat2();
		}
		
		public function encounterPhoenix3():void {
			if (flags[kFLAGS.PHOENIX_ENCOUNTERED] <= 0) encounterPhoenixFirstTime3();
			else encounterPhoenixRepeat3();
		}
		
		public function encounterPhoenixFirstTime1():void {
			clearOutput();
			outputText("Strolling along the mountain path, you realise that you are quite close to the tower where you and Hel fought the Harpy Queen and her little army of hybrids. Pausing for a moment, you are relieved to hear a distinct lack of noise, which hopefully means that no-one's tried to move back into the stronghold after ");
			if (flags[kFLAGS.HARPY_QUEEN_EXECUTED] > 0) outputText("her Highness became an ex-harpy.");
			else outputText("you evicted her Majesty from her seat of power.");
			outputText("\n\nA little smile crosses your features as you remember Hel's reaction to seeing her father again and you continue on your way, a slight bounce in your " + (player.isBiped() || player.isTaur() ? "step": "slither") + ". However, less than half a minute later you stop in your tracks when a cascade of rocks suddenly starts rolling down a slope to your right. It's at this point that you realise that the mountain is hardly ever quite this quiet, there's almost always some harpy screeching in the distance or, more often than not, right next to you. Fearing an ambush, you keep your eyes fixed on the peak of the small ridge, gripping your [weapon] tightly as you slow to a snail's pace. Your head darts from side to side as you try to keep watch on every possible hiding place at once, wondering if your previous idea about the tower being abandoned was completely wrong. What if those harpies you drove out decided to re-occupy their old roost? Images of you suddenly being swarmed by a mass of furious, bitter bird-girls enter your head and your jaw clenches slightly, [legs] starting to move a little faster as you try to distance yourself from the area as quickly as you can manage.");
			outputText("\n\nAs if on cue the sound of wings fills the air and you spin around to pinpoint their source, body readying itself to bolt away in case your wild imaginings become a little too real. However, instead of a flying horde you find yourself facing a red blur in the air, darting towards you with incredible speed. Almost relieved, you're still more than ready for a fight, something that comes in handy as a great burst of flame shoots towards you.");
			outputText("\n\nLuckily, thanks to your caution, you have just enough time to leap away from the great cone of fire, rolling away from the blast as it scorches a wide line on the ground right where you had been standing. The aerial arsonist circles around after their miss, wheeling through the sky before dropping to the earth in front of you, body almost completely hidden behind a great tower shield. Huge red wings and a pair of scaly, clawed feet are all you can spy around the worn-looking metal, but that is more than enough for you to identify your attacker as a phoenix, one of the very creatures you went up against during your assault on the tower.");
			outputText("\n\nThe shield lowers slightly revealing what would be a pretty, if dirty, face if it were not marred by a dark scowl. She drops the shield completely, exposing her body entirely as she takes a step towards you, a ragged looking chainmail vest and equally worn leather loincloth hardly able to contain her ample figure. Her other hand holds a shiny scimitar, although it appears to be just as well-used as the rest of her equipment. That doesn't make it any less threatening as she points it towards you though, every aspect of her stance and expression revealing the barely-restrained hate she seems to feel for you.");
			if (flags[kFLAGS.HARPY_QUEEN_EXECUTED] > 0) outputText("\n\n\"<i>YOU! You and your lizard <b>bitch</b> killed my mother! My sisters may be too scared to face you again, but I'm not going to let you get away with what you did.</i>\"");
			else outputText("\n\n\"<i>Finally found you. I should've known that you would be skulking around here, probably gloating over how you forced a family out of their home, right? Mother may have convinced the others that you're not worth our time, but I'm not going to let you get away with it.</i>\"");
			outputText("\n\nBefore you even have a chance to think up a reply the savage bird-woman charges you, the blade in her hand a whirlwind of steel that your eyes can barely keep track of.");
			flags[kFLAGS.PHOENIX_ENCOUNTERED]++;
			startCombat(new Phoenix());
		}
		
		public function encounterPhoenixFirstTime2():void {
			clearOutput();
			outputText("Strolling along the ashland, you think back to the tower where you and Hel fought the Harpy Queen and her little army of hybrids after ");
			if (flags[kFLAGS.HARPY_QUEEN_EXECUTED] > 0) outputText("her Highness became an ex-harpy.");
			else outputText("you evicted her Majesty from her seat of power.");
			outputText("\n\nA little smile crosses your features as you remember Hel's reaction to seeing her father again and you continue on your way, a slight bounce in your " + (player.isBiped() || player.isTaur() ? "step": "slither") + ". However, less than half a minute later you stop in your tracks when a cascade of rocks suddenly starts rolling down a slope to your right. It's at this point that you realise that the crag is hardly ever quite this quiet, there's almost always some monsters screeching in the distance or, more often than not, right next to you. Fearing an ambush, you keep your eyes fixed on the peak of the small ridge, gripping your [weapon] tightly as you slow to a snail's pace. Your head darts from side to side as you try to keep watch on every possible hiding place at once, wondering if your previous thought not jinxed anything. What if those harpies you drove out decided to move here? Images of you suddenly being swarmed by a mass of furious, bitter bird-girls enter your head and your jaw clenches slightly, [legs] starting to move a little faster as you try to distance yourself from the area as quickly as you can manage.");
			outputText("\n\nAs if on cue the sound of wings fills the air and you spin around to pinpoint their source, body readying itself to bolt away in case your wild imaginings become a little too real. However, instead of a flying horde you find yourself facing a red blur in the air, darting towards you with incredible speed. Almost relieved, you're still more than ready for a fight, something that comes in handy as a great burst of flame shoots towards you.");
			outputText("\n\nLuckily, thanks to your caution, you have just enough time to leap away from the great cone of fire, rolling away from the blast as it scorches a wide line on the ground right where you had been standing. The aerial arsonist circles around after their miss, wheeling through the sky before dropping to the earth in front of you, body almost completely hidden behind a great tower shield. Huge red wings and a pair of scaly, clawed feet are all you can spy around the worn-looking metal, but that is more than enough for you to identify your attacker as a phoenix, one of the very creatures you went up against during your assault on the tower.");
			outputText("\n\nThe shield lowers slightly revealing what would be a pretty, if dirty, face if it were not marred by a dark scowl. She drops the shield completely, exposing her body entirely as she takes a step towards you, a ragged looking chainmail vest and equally worn leather loincloth hardly able to contain her ample figure. Her other hand holds a shiny scimitar, although it appears to be just as well-used as the rest of her equipment. That doesn't make it any less threatening as she points it towards you though, every aspect of her stance and expression revealing the barely-restrained hate she seems to feel for you.");
			if (flags[kFLAGS.HARPY_QUEEN_EXECUTED] > 0) outputText("\n\n\"<i>YOU! You and your lizard <b>bitch</b> killed my mother! The Firstborn should have step up to replace our mother, yet that <b>weakling</b> acts too indifferent and lofty to do this and lead attack against you, but We're not going to let you get away with what you did.</i>\"");
			else outputText("\n\n\"<i>Finally found you. We should've known that you would be skulking around here, probably gloating over how you forced a family out of their home, right? Mother or Firstborn may have convinced the others that you're not worth our time, but We not going to let you get away with it.</i>\"");
			outputText("\n\nBefore you even have a chance to think up a reply the savage bird-woman charges you, the blade in her hand a whirlwind of steel that your eyes can barely keep track of. And distracted by her speach you failed to notice many more phoenixes landing nearby.");
			flags[kFLAGS.PHOENIX_ENCOUNTERED]++;
			startCombat(new PhoenixSquadAshland());
		}
		
		public function encounterPhoenixFirstTime3():void {
			clearOutput();
			outputText("Strolling along the vulcanic crag, you think back to the tower where you and Hel fought the Harpy Queen and her little army of hybrids after ");
			if (flags[kFLAGS.HARPY_QUEEN_EXECUTED] > 0) outputText("her Highness became an ex-harpy.");
			else outputText("you evicted her Majesty from her seat of power.");
			outputText("\n\nA little smile crosses your features as you remember Hel's reaction to seeing her father again and you continue on your way, a slight bounce in your " + (player.isBiped() || player.isTaur() ? "step": "slither") + ". However, less than half a minute later you stop in your tracks when a cascade of rocks suddenly starts rolling down a slope to your right. It's at this point that you realise that the crag is hardly ever quite this quiet, there's almost always some monsters screeching in the distance or, more often than not, right next to you. Fearing an ambush, you keep your eyes fixed on the peak of the small ridge, gripping your [weapon] tightly as you slow to a snail's pace. Your head darts from side to side as you try to keep watch on every possible hiding place at once, wondering if your previous thought not jinxed anything. What if those harpies you drove out decided to move here? Images of you suddenly being swarmed by a mass of furious, bitter bird-girls enter your head and your jaw clenches slightly, [legs] starting to move a little faster as you try to distance yourself from the area as quickly as you can manage.");
			outputText("\n\nAs if on cue the sound of wings fills the air and you spin around to pinpoint their source, body readying itself to bolt away in case your wild imaginings become a little too real. However, instead of a flying horde you find yourself facing a red blur in the air, darting towards you with incredible speed. Almost relieved, you're still more than ready for a fight, something that comes in handy as a great burst of flame shoots towards you.");
			outputText("\n\nLuckily, thanks to your caution, you have just enough time to leap away from the great cone of fire, rolling away from the blast as it scorches a wide line on the ground right where you had been standing. The aerial arsonist circles around after their miss, wheeling through the sky before dropping to the earth in front of you, body almost completely hidden behind a great tower shield. Huge red wings and a pair of scaly, clawed feet are all you can spy around the worn-looking metal, but that is more than enough for you to identify your attacker as a phoenix, one of the very creatures you went up against during your assault on the tower.");
			outputText("\n\nThe shield lowers slightly revealing what would be a pretty, if dirty, face if it were not marred by a dark scowl. She drops the shield completely, exposing her body entirely as she takes a step towards you, a ragged looking chainmail vest and equally worn leather loincloth hardly able to contain her ample figure. Her other hand holds a shiny scimitar, although it appears to be just as well-used as the rest of her equipment. That doesn't make it any less threatening as she points it towards you though, every aspect of her stance and expression revealing the barely-restrained hate she seems to feel for you.");
			if (flags[kFLAGS.HARPY_QUEEN_EXECUTED] > 0) outputText("\n\n\"<i>YOU! You and your lizard <b>bitch</b> killed my mother! The Firstborn should have step up to replace our mother, yet that <b>weakling</b> acts too indifferent and lofty to do this and lead attack against you, but We're not going to let you get away with what you did.</i>\"");
			else outputText("\n\n\"<i>Finally found you. We should've known that you would be skulking around here, probably gloating over how you forced a family out of their home, right? Mother or Firstborn may have convinced the others that you're not worth our time, but We not going to let you get away with it.</i>\"");
			outputText("\n\nBefore you even have a chance to think up a reply the savage bird-woman charges you, the blade in her hand a whirlwind of steel that your eyes can barely keep track of. And distracted by her speach you failed to notice many more phoenixes landing nearby.");
			flags[kFLAGS.PHOENIX_ENCOUNTERED]++;
			startCombat(new PhoenixPlatoon());
		}
		
		public function encounterPhoenixRepeat1():void {
			outputText("Strolling along the mountain path, you spot the familiar Phoenix. You ready your [weapon].");
			if (flags[kFLAGS.PHOENIX_ENCOUNTERED] == 1) outputText("\n\n\"<i>Back again?</i>\" The phoenix says with a glare. \"<i>But... I guess you're a worthy opponent. Let's see what you're made of!</i>\" The phoenix yells as she readies her scimitar and shield. You assume a combat stance.");
			else outputText("\n\n\"<i>Back again?</i>\" The phoenix says with a glare. \"<i>Get ready for a rematch!</i>\" The phoenix yells as she readies her scimitar and shield. You assume a combat stance.");
			flags[kFLAGS.PHOENIX_ENCOUNTERED]++;
			startCombat(new Phoenix());
		}
		
		public function encounterPhoenixRepeat2():void {
			outputText("Strolling along the ashlands, you spot the familiar Phoenix squad. You ready your [weapon].");
			if (flags[kFLAGS.PHOENIX_ENCOUNTERED] == 1) outputText("\n\n\"<i>Back again?</i>\" The leading phoenix says with a glare. \"<i>But... I guess you're a worthy opponent. Let's see what you're made of!</i>\" The phoenix yells as whole squad readies their scimitars and shields. You assume a combat stance.");
			else outputText("\n\n\"<i>Back again?</i>\" The leading phoenix says with a glare. \"<i>Get ready for a rematch!</i>\" The phoenix yells as whole squad readies their scimitars and shields. You assume a combat stance.");
			flags[kFLAGS.PHOENIX_ENCOUNTERED]++;
			startCombat(new PhoenixSquadAshland());
		}
		
		public function encounterPhoenixRepeat3():void {
			outputText("Strolling along the vulcanic crag, you spot the familiar Phoenix platoon. You ready your [weapon].");
			if (flags[kFLAGS.PHOENIX_ENCOUNTERED] == 1) outputText("\n\n\"<i>Back again?</i>\" The leading phoenix says with a glare. \"<i>But... I guess you're a worthy opponent. Let's see what you're made of!</i>\" The phoenix yells as whole platoon readies their scimitars and shields. You assume a combat stance.");
			else outputText("\n\n\"<i>Back again?</i>\" The leading phoenix says with a glare. \"<i>Get ready for a rematch!</i>\" The phoenix yells as whole platoon readies their scimitars and shields. You assume a combat stance.");
			flags[kFLAGS.PHOENIX_ENCOUNTERED]++;
			startCombat(new PhoenixPlatoon());
		}
		
		//VICTORY!
		public function winAgainstPhoenix():void {
			flags[kFLAGS.PHOENIX_HP_LOSS_COUNTER] = 0; //Reset counter if you win.
			outputText("With one final grunt, the phoenix collapses against a nearby rock, barely able to support herself. The once-proud soldier has been reduced to a " + (monster.lust >= monster.maxLust() ? "dazed, lust-crazed slut, desperately pulling at her clothing in a mad attempt to expose herself": "a beaten, battered heap; completely unable to resist your advances") + ". ");
			if (player.lust >= 33 && flags[kFLAGS.SFW_MODE] <= 0) {
				outputText("What do you do? \n\n");
				menu();
				if (player.hasCock()) {
					if (player.cockThatFits(monster.vaginalCapacity()) >= 0) addButton(0, "Missionary", missionaryWithPhoenix);
					else outputText("<b>Unfortunately, " + (player.cocks.length == 1 ? "your cock doesn't": "none of your cocks") + " fit in her vagina.</b>\n");
					if (player.cockThatFits(monster.analCapacity()) >= 0) addButton(1, "Fuck Ass", fuckPhoenixsButt);
					else outputText("<b>Unfortunately, " + (player.cocks.length == 1 ? "your cock doesn't": "none of your cocks") + " fit in her ass.</b>\n");
					addButton(2, "Get Wanked", getWanked);
				}
				addButton(3, "Ride Anal", rideAnal);
				if (player.hasVagina()) addButton(4, "Ride Vaginal", rideVaginal);
				//addButton(5, "Suck Her Dick", rideAnal);
				if (player.hasVagina() && player.biggestTitSize() >= 4 && (player.armor == armors.LMARMOR || player.armor == armors.S_ARMOR)) {
					if (player.armor == armors.S_ARMOR) addButton(7, "B.Titfuck", (player.armor as SuccubusArmor).succubusPaizuri);
					else addButton(7, "B.Titfuck", (player.armor as LustyMaidensArmor).lustyMaidenPaizuri);
				}
				if (player.pcCanUseUniqueSexScene()) addButton(13, "U. Sex Scenes", uniquuuesexscene.pcUniqueSexScenesChoiceMenu, 026).hint("Other non typical sex scenes.");
				addButton(14, "Leave", cleanupAfterCombat);
			}
			else cleanupAfterCombat();
		}
		public function winAgainstPhoenix1():void {
			flags[kFLAGS.PHOENIX_HP_LOSS_COUNTER] = 0; //Reset counter if you win.
			outputText("With one final grunt, the phoenixes collapses, barely able to support themself. The once-proud soldiers has been reduced to a " + (monster.lust >= monster.maxLust() ? "dazed, lust-crazed sluts, desperately pulling at their clothing in a mad attempt to expose themself": "a beaten, battered heap; completely unable to resist your advances") + ". Still most of them seems to have some strength left as all lift off leaving behind one of them pressumable the weakest one. ");
			if (player.lust >= 33 && flags[kFLAGS.SFW_MODE] <= 0) {
				outputText("What do you do? \n\n");
				menu();
				if (player.hasCock()) {
					if (player.cockThatFits(monster.vaginalCapacity()) >= 0) addButton(0, "Missionary", missionaryWithPhoenix);
					else outputText("<b>Unfortunately, " + (player.cocks.length == 1 ? "your cock doesn't": "none of your cocks") + " fit in her vagina.</b>\n");
					if (player.cockThatFits(monster.analCapacity()) >= 0) addButton(1, "Fuck Ass", fuckPhoenixsButt);
					else outputText("<b>Unfortunately, " + (player.cocks.length == 1 ? "your cock doesn't": "none of your cocks") + " fit in her ass.</b>\n");
					addButton(2, "Get Wanked", getWanked);
				}
				addButton(3, "Ride Anal", rideAnal);
				if (player.hasVagina()) addButton(4, "Ride Vaginal", rideVaginal);
				//addButton(5, "Suck Her Dick", rideAnal);
				if (player.pcCanUseUniqueSexScene()) addButton(13, "U. Sex Scenes", uniquuuesexscene.pcUniqueSexScenesChoiceMenu, 027).hint("Other non typical sex scenes.");
				addButton(14, "Leave", cleanupAfterCombat);
			}
			else cleanupAfterCombat();
		}
		
		public function missionaryWithPhoenix():void {
			clearOutput();
			outputText("You charge at the defenseless phoenix, quickly disarming her before throwing the defeated girl to the ground, leaving her moaning in the dirt on her back. She grunts, shaking her head vigourously to try and clear her mind, before looking up at you with grim, fierce eyes. ");
			outputText("\n\n\"<i>I’ll never submit! I am a noble phoenix, not some-</i>\" Completely ignoring her you yank her chain shirt up, revealing the heaving, plush D-cups beneath " + (monster.lust >= monster.maxLust() ? " nipples already standing at attention in the cool air": "") + ". The phoenix gasps at the sudden exposure and turns her head away, squeezing her eyes closed, determined to not look you in the eye as you take your pleasure.");
			outputText("\n\nKneeling before her you tear away her loincloth, forcing her legs apart to reveal her " + (monster.lust >= monster.maxLust() ? " slick pussy and half-rigid cock, clearly aroused despite her insistence on not enjoying herself": " tight slit and slowly engorging lizard-shaft, apparently her current condition is more enticing than she wants to admit") + ". You run a pair of fingers along her cleft, trailing it all the way up to the tip of her stirring member before circling around her tip and sliding back down. The phoenix whines pitifully as her prick reacts accordingly, twitching as it hardens at your teasing touch before you bring your fingers back to her slickening entrance and ease them between her soft lips. She groans, gritting her teeth as you go deeper and deeper inside her, wiggling against her walls whilst she soaks your hand with arousal.");
			outputText("\n\nHer neck cranes as she struggles to control herself; slow, heavy breathing accentuating her tits as they tremble gently with each mouthful of air. With a grin you whip your fingers out of her and, as she writhes at the sudden emptiness, force them into her gasping mouth. Eyes shooting wide open, she sputters and shakes her head, but you don’t let up until she’s had a good, long taste, wrapping her reptilian tongue around your dripping digits to make sure she gets a full sampling of her own flavour. The way her tongue constricts your sodden fingers floods your groin with warmth and you feel your " + (player.cocks.length == 1 ? "member": "members") + " starting to thicken as she slurps at her own spunk.");
			outputText("\n\nWithdrawing your hand you chide her, asking that if she doesn’t want it so much, why is she so wet?");
			outputText("\n\n\"<i>I-I am not! It’s natural!</i>\" As she speaks, her tongue darts out to lick her lips, almost as if searching for more of her delicious juice.");
			outputText("\n\nOh, really? Is she sure she doesn’t just want your cock? Doesn't need it with every fibre of her being? She's not going to try and jump you like an animal in heat, begging you for your seed?");
			outputText("\n\n\"<i>I... N-No, I'm a p-proud warrior... I-</i>\" her words are quickly cut off as your hand clamps around her shaft, feeling it throb in time with her excited heartbeat. Your own " + (player.cocks.length == 1 ? "[cock] stirs": "[cocks] stir") + " as you gently squeeze her, pressing against the insides of your leggings with nigh-unbearable pressure. A grin spreads across your face as her voice trails off into a keening whine and her thighs start to grind against one another, smearing her feathers with femcum. ");
			outputText("\n\nGrasping her thighs, you spread them apart again, even wider this time. She moans and tries weakly to close them, but you hold her fast, kneeling between them and pinning her with your own legs. Pressing her hard cock against her stomach, you completely expose your prize; her thoroughly sodden cunt" + (player.cocks.length > 1 ? " and the enticingly tight ring below it": "") + ". Wasting no time, you reach down and free " + (player.cocks.length == 1 ? "your member, grunting as it": "all of your pricks, grunting as one") + " slaps against the top of her pussy, landing on her clit with a soft slap. She gasps sharply at the treatment, but begins to moan you shift your hips, letting your meat slide down between her wet, plump lips. Releasing her now-leaking rod, you grasp her soft hips whilst you continue to tease her, running your tip up and down her drooling slit. When you reach the top of her gash, you slide against her button and press into the base of her aching lizardcock, smirking as a thick rivulet of spunk rolls down her shaft in response. ");
			if (player.cocks.length >= 2) outputText("Whilst you tease her sensitive pussy, your [cock 2] moves in to prod at her tight ass. As soon as the [cockHead 2] touches her pucker she jumps, squirming desperately in an attempt to wriggle away. However your grip is far too firm and you hold her in place, forcing her to endure the feeling of your imminent intrusion. ");
			outputText("\n\nYour constant stimulation is clearly leaving the phoenix conflicted; part of her trying desperately to resist the pleasure coursing through her, the rest a barely restrained whore all too eager to let you stuff her with virile spunk and leave her a sweating, quivering mess on this mountain. She tries to keep her eyes closed, turning her face away from you whilst biting her lip, all in an attempt to stop herself from groaning as you touch and caress her needy body. In no time at all " + (player.cocks.length == 1 ? "your length is dripping lubrication, both your own and hers,": "your lengths are slathered with a combination of your fluids,") + " gently spreading her equally soaked pussy " + (player.cocks.length > 1 ? " and pucker": "") + " as you unconsciously press against her harder and harder. Unable to hold yourself back, you ensure that you're lined up " + (player.cocks.length == 1 ? "with her, the tip of your member pushing into her soaking snatch, stretching her just enough to draw out a moan as she struggles to control herself.": "with both of her holes, your shafts forcing their way into her just enough to coax a low whine from the sensitive girl.") + " Tightening your grip on her hips, you drag her down your " + (player.cocks.length > 1 ? "yearning shaft": "twin poles") + " with an agonizing slowness, relishing in every twitching inch that you sink into her. ");
			outputText("\n\nHer voice slowly builds as you slip into her slick, tight tunnel" + (player.cocks.length > 1 ? " and even tighter ass": "") + ", her hips trying to thrust against you in hopes of speeding up your torturously slow intrusion. You resist her, stopping your movement completely as you firmly hold her lower body still. She cries out as you remain motionless inside her, your throat rumbling as her body quakes around you, almost overcome by the blissful feeling of her spasming pussy " + (player.cocks.length > 1 ? " and back passage": "") + ". ");
			outputText("\n\nHer eyes shoot open and stare into yours pleadingly, seconds ticking by with no movement except for her body trying to coax you further inside, grasping and squeezing your " + (player.cocks.length == 1 ? " [cock]": "rods") + ". You simply hold her gaze, watching her face intently as the desperation builds, her expression imploring you to continue. She tries to wrap her legs around your hips, the move spreading her entrance" + (player.cocks.length > 1 ? "s": "") + " slightly wider as her surprisingly strong thighs tighten about your waist.");
			outputText("\n\nWith her new position she tries to pull you into her, legs tensing with effort. Your grip on her hips increases, fingers sinking into the soft, feathered flesh as you hold her hips away from you. Her snatch quivers around your length as her legs begin to tremble, though you manage to stop yourself from sliding any further into the incredibly horny girl. She must still be exhausted from the fight, considering that it feels as if it takes almost no effort to keep her at bay.");
			doNext(missionaryWithPhoenixPart2);
		}
		
		public function missionaryWithPhoenixPart2():void {
			clearOutput();
			outputText("A few moments pass before she relents, realising that you are completely in control and have no intention of continuing just yet. She tries to relax, attempting to calm her needy body with deep breaths that accentuate her breasts. However, every time she inhales you see her shudder slightly as your scent fills her lungs, making her cock throb and " + (player.cocks.length == 1 ? "hole": "holes") + " pulse around you as her heartbeat just keeps speeding up. Precum oozes from her shaft, dribbling down onto her crotch whilst you stare at her, waiting for her desire to drive her over the edge again. Sweat beads across her skin as she lies there, stuffed with your meat and trying desperately to not enjoy it. Her voice builds again, a high-pitched whine full of frustration and want.");
			outputText("\n\n\"<i>Oh Gods, just... just fuck me already! Please!</i>\" Well, how very polite of her, but she just doesn't seem sincere enough. You lean over her, flicking your tongue over a nipple as her chest continues to heave, before bringing a hand to cup her chin and hold her face still as you stare into it.");
			outputText("\n\n\"<i>Beg.</i>\"");
			outputText("\n\n\"<i>I... I need it!</i>\" Her eyes start to tear up as you hold her gaze, the act of pleading you to rut her almost unbearable, despite her need. \"<i>Please, just fill me with your s-spunk! I want... I <b>need</b> to feel you stuff my body with so much cum that I can't even think straight. To have your seed fill me up, your children inside me! Just p-please <b>FUCK ME</b>!</i>\"");
			outputText("\n\nWell, that'll have to do, you suppose. Your hands move to her thighs, grasping them tightly as you pull your bodies together. She nearly screams as your " + (player.cocks.length == 1 ? "length starts": "members start") + " moving inside her again, moaning loudly by the time you hips meet hers. The phoenix squirms as you hilt her, groaning and writhing around you as you try to cope with her crushing depths. She bites her lip, though it does little to stop her moans from pouring out of her whilst you slam into her hips, her slick pussy virtually drooling as you use her body like a grunting, hot cocksleeve.");
			outputText("\n\nAs you pummel her, you feel her hands snaking their way down her body, zeroing in on the hard, purple shaft that bounces in the air with each thrust of your hips. Her stomach is glazed with precum, showing exactly how needy her lizardlike member is for release, another thin stream of pre oozing from it as you ride the girl's tight hole" + (player.cocks.length == 1 ? "": "s") + ". ");
			outputText("\n\nHowever, just before her fingers can reach her aching prick, you grab her wrists, pinning them above her head. The move buries your shaft" + (player.cocks.length == 1 ? "": "s") + " inside her as lean over the girl, a frustrated moan coming from her as your bodies press together intimately. You feel her member twitch as your bodies enclose it, precum coating your [armor] as the pressure forces it from her hot length. ");
			outputText("\n\nShe moans again, more lustfully this time as you resume your pounding, each stroke rubbing her cock between your bodies. You dip your head to her chest, lips sealing around a perky nipple whilst you thrust harder and faster. She arches her back as your tongue flicks across the sensitive nub, groaning and tightening the grip she has on your waist in time with your rapid humping. Her tail flits about between you legs, though it's clear to see that she lack the energy to use it in any kind of an aggressive fashion.");
			outputText("\n\nWith such a relentless pace, it isn't long before her cries start to get louder and higher, driving you to slam your hips into the girl. Her breasts bounce with each stroke, hands balling into fists as you push harder against her, squeezing her drooling reptilian shaft between you. It squelches slightly as it slides between your two cum-slick bodies, the motion making the girl grunt every time you change direction.");
			outputText("\n\nShe cums first" + (player.cocks.length == 1 ? "": ", the rapid pace of your twin shafts too much for her to bear") + ", gripping your shoulders hard enough for her claws pierce your armour. He eyes squeeze shut as her body gives in, not wanting to see you as you claim the girl as yours. Despite herself, a deep groan rumbles in her throat as the pleasure overwhelms her, her chest heaving upwards as she tries to futilely fight one last time against your grip.");
			outputText("\n\nYou moan in kind as her spasming pussy " + (player.cocks.length == 1 ? "": "and quivering sphincter") + " tightens around your [cock]" + (player.cocks.length == 1 ? "": "and [cock 2]") + ". Her hips start to buck as her member erupts, her legs pistoning her upwards to your body as hot jizz pumps between you both with every twitch of her sensitive shaft. ");
			outputText("\n\nWith her writhing form pressing against you so fully, her muscles squeezing down so hard, you can’t help but blow your load. You bite down on her hard little nip, moaning richly into her breast as your hips hammer the girl's pelvis. Thick, rich spunk surges through your cock" + (player.cocks.length == 1 ? "": "s") + ", gooey ropes of warm, fertile seed shooting into her wet tunnel " + (player.cocks.length == 1 ? "": "and deliciously tight asshole") + ". It floods her body, even as her hips squirm in an attempt to escape the feeling of being defiled by you. Her voice explodes into a wailing moan as you continue to shoot inside her, staining her quivering walls white, all the while holding her wrists firmly down as her entire body undulates against you; a mixture of orgasmic pleasure and a desperate need to escape your grip.");
			outputText("\n\nThrusting harshly against her, trying to bury your cum into her as deeply as possible, you feel her reptile prick still trembling between you, painting your bodies with white ropes of phoenix cream. Her load is so copious that you begin to squelch each time you hilt in the girl, though the sound is barely noticeable over her squealing voice.");
			outputText("\n\nEventually, your orgasm finished, leaving you panting atop the phoenix girl. Finally satisfied, you release the her wrists and heave yourself off her, glancing down to see that she’s passed out from the nigh-unending orgasm. Her leaking, cum-stuffed hole" + (player.cocks.length == 1 ? "": "s") + " still quiver" + (player.cocks.length == 1 ? "s": "") + " around your shaft" + (player.cocks.length == 1 ? "": "s") + ", her thick, purple lizard dick half-erect and spurting cum onto her chest in time with her breathing. Her tits glisten slightly in the sunlight as they rise and fall, sweat, saliva and cum clinging to the wobbling orbs. Grinning, you withdraw yourself from the girl, pulling your cock" + (player.cocks.length == 1 ? "": "s") + " out of her ravaged entrance" + (player.cocks.length == 1 ? "": "s") + ", triggering a rush of your semen as her widened snatch " + (player.cocks.length == 1 ? "": "and ass") + " lose the plugs that held the deluge back. You can still see her labia twitching as your seed drips down her cheeks, the thick goo swiftly pooling between her thighs.");
			outputText("\n\nYou wipe your cock" + (player.cocks.length == 1 ? "": "s") + " on some of the girl's less-stained feathers before tucking " + (player.cocks.length == 1 ? "it": "them") + " away, snatching a gempurse from her discarded armour before starting on your journey back to camp, whistling all the way.");
			player.sexReward("Default","Default",true,false);
			dynStats("sens", -2);
			cleanupAfterCombat();
		}
		
		public function fuckPhoenixsButt():void {
			clearOutput();
			var x:int = player.cockThatFits(monster.analCapacity());
			if (x < 0) x = 0;
			outputText("With your mind made up, you're definitely in control. You tell the phoenix that you're going to fuck her ass. You quickly yank her scimitar away so she's defenseless and loincloth off to expose her tailhole and firm butt-cheeks. You give her a hard shove on the grounds and step on her back like you're dominating. She gives you a glare and yells, \"<i>I'll never submit to you! I never will!</i>\"");
			if (player.armorName == "goo armor") outputText("\n\nThe goo opens up to reveal your " + player.cockDescript(x) + ". ");
			else outputText("\n\nYou take off the bottom half of your [armor] to reveal your " + player.cockDescript(x) + ". ");
			outputText("You grab her by her rump and lift her tail, caress her butt-cheeks and tell her to get ready for the ordeal ahead.");
			outputText("\n\nYou push your " + player.cockDescript(x) + " into her rear entrance, inch by inch until " + (player.cocks[x].cockLength < 12 ? "you hilt into her": "you can push in no more") + ".  You begin to thrust back and forth with abandon as each thrust brings pleasure to the phoenix.  Precum leaks from her reptilian cock and femjuice drips from her vagina. She gives you a glare and yells, \"<i>I still w— yes, fuck my ass harder!</i>\"");
			outputText("\n\nAs if spurred, you slam harder into her anus, bringing her to a massive pleasure. Her breasts bounce with each thrust, giving her even more pleasure. You fuck her ass hard until you can hold back no more. You arch your back and unleash torrents of cum into the phoenix's bowels.  Your orgasm triggers the phoenix's orgasm as she unleashes her cum and femspunk, forming a puddle of mixed fluids.  Your ejaculates slow down to a halt and you lay down exhausted.");
			if (player.armorName == "goo armor") outputText("\n\nThe goo closes up around your nether regions.  ");
			else outputText("\n\nYou take the time to re-dress your lower half.  ");
			outputText("Satisfied, you make your way back to your camp.");
			player.sexReward("Default","Default",true,false);
			dynStats("sens", -2);
			cleanupAfterCombat();
		}
		
		public function getWanked():void {
			clearOutput();
			outputText("Looking down at the defenseless phoenix, you feel a distinct sense of desire start to boil up inside you. The sight of the scantily-clad girl on her knees before is too much to bear, blood quickly rushing to your nethers as you approach her. Before she can recover, you place a foot against her shoulder and push the hermaphrodite on her back, making her grunt as her back connects with the rocky ground. Your foot presses her down, pinning her as you look over your conquest as she stares up at you with grim, fierce eyes. You notice with a slight smirk that she seems to be having trouble controlling herself, every few seconds her eyes glance away from your face and across your body, as if admiring your semi-lewd pose.");
			outputText("\n\nWithout breaking your gaze, you slide a hand down your front and start to loosen your [armor], quickly releasing your [cock] from your increasingly restrictive clothing. The girl looks like she rushes through a whole range of reactions in the space of a few seconds, her expression flashing from surprise to desire before finally settling on contempt, her eyes narrowing even further. However, in spite of her cold gaze you can see that she's clearly struggling even harder to keep her eyes focused on your face and not your thickening, delectable meat, throbbing so tantalizingly above her.");
			outputText("\n\n\"<i>I’ll never submit! I am a proud warrior, not some-</i>\" Yeah, whatever. You reach down to the fiery woman, your foot increasing the pressure on her shoulder as you go. As you move towards her, your cock seems to take up more and more of her attention, her defiant speech petering off quickly as you close the distance between the two of you. ");
			outputText("\n\nIt's not until your hand grips her worn chain shirt and tears it open to reveal the heaving, supple D-cups beneath that the phoenix is snapped out of her trance, gasping at the sudden exposure. She defiantly turns away from you, new determination apparently flooding through her as she resolves to not look you in the eye as you take your pleasure. You lift your foot off her shoulder but before she has a chance to move you are upon her again, sitting on her stomach. With one knee either side of her and your shaft slapping against her chest, you're in a perfect position to fully appreciate her newly-bared breasts. Bringing a hand up your fingers tease their way up her side, feeling her body shiver at your touch before cupping one of her tits roughly, kneading the flesh and pinching her nipple between your fingers until she’s whimpering, her teeth clenching as she tries to withstand your teasing. ");
			outputText("\n\nAs you play with her boobs, your [cock] starts to slip between them even more, her smooth flesh enveloping your throbbing shaft with at an unbearably slow pace. You let up for just a moment, releasing her now erect nipples and tell the girl that she’s going to get you off with her special endowments, squeezing slightly for emphasis, or else. She grunts slightly as you continue to molest her chest, her head turning back to you as she weighs up her options. Another squeeze and the girl's back arches as pleasure shoots through her, her chest pressing up into your hands as she groans deeply. Looking up at you once more she slowly nods her head, finally submitting to you. ");
			outputText("\n\nYou release her sensitive chest and nudge your hips forward, burying your cock even deeper between her ample tits. Reluctantly the phoenix girl brings her fiery tail around, the flames that dance along it dimming before your eyes, apparently under complete control of the hybrid beneath you. Shivering, you can't help but moan as her smooth, flexible scales begin to snake it around your shaft. You urge her on as her grip tightens around you, slowly starting to stroke along your length as your hands find themselves running through the girl’s bright red hair, massaging her head gently as pleasure begins flooding your body.");
			outputText("\n\nIt feels heavenly, your frame shudder with delight as her warm, tight grip rubs and squeezes you. You feel your precum starting to coat her cleavage as your hips start to thrust of their own accord, your [cock] throbbing in time with her tail's movements. Biting back another moan, you feel your stomach starting to tighten as her surprisingly effective technique starts to bring you close. " + (flags[kFLAGS.PHOENIX_WANKED_COUNTER] <= 0 ? "Grinning slightly, you ask her if she's ever done this before.": "Chuckling, you ask the girl if she's been practicing for you.") + " Her eyes widen with what you can only assume to be outrage as her tail tightens suddenly, a low groan shooting through you as she seems to struggle to find her words.");
			outputText("\n\n\"<i>I-I... I don't know what you... I mean, the idea of doing something so-</i>\" one of your hands slips from her head back to a nipple, pinching it just hard enough to hurt. \"<i>Ah! Ok, maybe I've... tested it on myself one or two times...</i>\" The girl's shrill cry of pained pleasure is punctuated with another squeeze of your shaft, thick precum spilling between her breasts in a slow, rich stream as your mind fills imaginings of the girl entwining her solid purple rod with her own tail, swiftly devolving from a strong, powerful fighter into a mewling, wanton slut.");
			outputText("\n\nAs you continue to daydream, your hand keeps teasing the girl's bullet-like nipple, flicking across the sensitive nub as your mental images grow more and more explicit. However, you're rudely ripped from your thoughts by the feeling of being confined, as if you had been suddenly surrounded by walls. Opening your eyes, you find your view of the mountains and sky has been blocked out by large, crimson feathers; the girl has enclosed you within her wings! Before you can respond to her actions, your fingers are batted away from her chest, your grip on her nipple easily dislodged in your distracted state. Moments later, you gasp as her breasts start to move around your [cock], the precum slathered between them covering it as they slide over you. Looking down, you see that the phoenix has taken a hold of her tits and is finally getting into pleasuring you, a begrudging smirk on her face that widens slightly as her soft mounds brush over your [cockhead], another gasping moan bursting from you.");
			outputText("\n\nYour " + cockDescript() + " explodes, pumping a thick load into the shocked phoenix’s mouth. She gags on your cum, finally swallowing it as the last of your sperm drips into her mouth. With a grin, you tell her what a good job she did as you withdraw your [cock] from her grip. With little rivulets of cum dripping down her face, the halfbreed collapses onto her back, rapidly fingering herself.");
			flags[kFLAGS.PHOENIX_WANKED_COUNTER]++;
			player.sexReward("Default","Default",true,false);
			cleanupAfterCombat();			
		}
		
		public function rideVaginal():void {
			clearOutput();
			outputText("You grab the defenseless phoenix and throw the hermaphrodite on her back. She grunts, looking up at you with grim, fierce eyes. \"<i>I’ll never submit! I am a proud warrior, not some--</i>\" Yeah, whatever. You rip her chain shirt open, revealing the large, soft globes of her D-cups beneath. The phoenix gasps at the sudden exposure and turns her head away, determined not to look you in the eye as you take your pleasure. You ignore her temporary defiance and grab her cock.");
			outputText("\n\n\"<i>Heeeey,</i>\" the phoenix whines squirming to get out of your grip.");
			outputText("\n\nYou maintain your grasp on her long, purple lizard dick and tell her that you’re doing her a favor: you’re going to let her fuck your " + vaginaDescript() + ". She stops struggling at the invitation.");
			outputText("\n\n\"<i>Oh. Well,</i>\" she says, smirking slightly. \"<i>If you want a bit of phoenix seed... I guess I wouldn’t mind a chance at being a daddy.</i>\"\n\n");
			if (player.hasPerk(PerkLib.BroodMother) && player.pregnancyType > 0) outputText("You assure her she will be soon");
			else outputText("You grin at her");
			outputText(" and strip out of your [armor]. The phoenix, a bit more dominant than you might have liked, roughly grabs your [chest], pinching your nipples as she takes over wringing her cock from you. Oh well. You decide to roll with it and slide a hand down to your [vagina], stroking your pussy as your lover warms up.");
			outputText("\n\nWhen she’s nice and hard, you give the phoenix a little push onto her back and clamber into her lap, lining her lizard prick up with your [vagina]. Before you can get properly situated, though, the girl pulls you down onto her cock, impaling you up to her hilt in one massive thrust. You roll your head back and scream, a mix of pleasure and burning pain shooting through you as her white-hot rod slams into your innermost depths.");
			player.cuntChange(12, true, true, true);
			outputText("\n\nBy the time you’re somewhat recovered from her surprise attack, the phoenix girl has started rocking her hips into yours, grinding her long prick into you. You give her hefty tits a rough squeeze and push her back down, holding her down by her mammaries as you start to ride her cock. having gotten her thrill, the phoenix girl submits to you, only venturing to hold onto your [hips] as you fuck her. For your part, you bask in the sensation of her thick dick sliding in and out of your well-lubricated depths, rubbing and stroking your sensitive inner walls with its bulbous length.");
			outputText("\n\nNow that you’re into the swing of things, you give your phoenix lover a hand up, pulling her into a sitting position and burying her face into your [chest]. She struggles for a moment but, after seeing how nice cuddling against your warm flesh is, she relaxes into your embrace. You start to bounce on her cock, smushing her face into your breasts at the apex of each bounce, and slamming her prick deep inside you as you fall.");
			outputText("\n\nUnable to take the cumulative pleasure, the phoenix cums. You go wide-eyed as her burning-hot cum pours into your waiting womb, scalding your depths with her sizzling, potent seed. You can only keep riding her, letting her jizz flow into you until the heat and pleasure sends you over the edge too. You hug the phoenix tight as orgasm hits you, shuddering and gasping as ecstasy threatens to overwhelm you. Your [vagina] milks your lover for every last drop until, breathless, you release your death-hold on your lover, letting her flop insensate to the ground.");
			outputText("\n\nYou stand, a bit bow-legged, and watch as a bucket’s worth of her extra seed pours out of your sodden twat, pooling on the phoenix’s breasts and belly. Giggling, you stumble off her and collect your [armor].");
			player.sexReward("cum","Vaginal");
			cleanupAfterCombat();
		}
		
		public function rideAnal():void {
			clearOutput();
			outputText("You grab the defenseless phoenix and throw the hermaphrodite on her back. She grunts, looking up at you with grim, fierce eyes. \"<i>I’ll never submit! I am a proud warrior, not some--</i>\" Yeah, whatever. You rip her chain shirt open, revealing the large, soft globes of her D-cups beneath. The phoenix gasps at the sudden exposure and turns her head away, determined not to look you in the eye as you take your pleasure. Gripping the warrior by her hefty boobs, you tell the phoenix that it’s her lucky goddamn day: you’re going to let her fuck your ass.");
			outputText("\n\nThe phoenix stares up at you with a mix of eagerness and caution. \"<i>Wait... you’re gonna let me... do that? Really?</i>\"");
			outputText("\n\nYou nod.");
			outputText("\n\n\"<i>Uh, well... okay, then. If that’s what you want...</i>\"");
			outputText("\n\nYou quickly discard your [armor] and, pushing the girl back onto her back, squat over your prize. You wrap your hand around her stiff lizard prick and start to stroke it, running your hand along her bulbous purple shaft. The phoenix makes a pleasured gasp as you start to jerk her off, idly playing with her lush tits or slick pussy as you stroke her to full hardness.");
			outputText("\n\nOnce you’re satisfied that she’s completely rigid, you shift your [hips] so that your [asshole] is hovering over the phoenix’s thick twelve-incher. You allow her to put her hands on your hips and guide you down, until you can feel her narrow head pressed against your backdoor. You do the honors, however, biting your lip to stifle a cry of pain and pleasure as her wide prick slips past your relaxed sphincter and into your bowels.");
			player.buttChange(12, true, true, true);
			outputText("\n\nYou grunt as she bottoms out inside you, leaving you with a feeling of intense fullness and warmth. You grin down at the phoenix girl, pleased to see the look of rapture on her face as your ass muscles squeeze down on her stiff lizard-cock. You feel her hands digging into your [hips], and in return you give her soft breasts a playful squeeze. You start to rock your hips, letting an inch or two of her dick spill out of you before your stretched [asshole] sucks it back up.");
			outputText("\n\nSurprisingly, the phoenix girl shifts her hands from your hips to your shoulders and pulls you down on top of her, pushing your face into her pillowy breasts. Before you can chastise her, your lover slams her cock into you, making you scream with pleasure into her soft flesh. Grinning, she wraps her wings, legs, and tail around you, completely immobilizing you as she starts to hammer your ass, pistoning her cock in and out of you.");
			outputText("\n\nHelpless under the phoenix’s surprise attack, you can do little more than grit your teeth and let the pleasure take you. You return her embrace, taking one of her nipples into your mouth to play with as she fucks you raw. You can feel an anal orgasm mounting, and quickly try and relax yourself, letting in more and more of her cock until she is again hilting you, her hips slamming into your [butt].");
			outputText("\n\nUnable to hold on for long, you bite down on her pink nipple and cum, letting waves of pleasure wash over you from your rectal intruder. Your sphincter crunches down hard on the lizard prick inside you, milking it just like a pussy would until, spurred on by your orgasm and bite to her most sensitive flesh, the phoenix-girl cums. You yelp as her burning-hot cum rushes into your ass, scalding your walls until you feel a massive wave of pleasure crash into you -- a second orgasm! Your mind goes utterly numb, nearly blacking out as tremors of ecsatcy pump into you from her dick.");
			outputText("\n\nWhen you come to your senses a few minutes later, the phoenix girl is asleep, still holding you tight. You pull her deflated lizard dick out of your ass and shudder as a torrent of her sizzling-hot spunk dribbles out onto her thighs and hips. You wriggle out of her tight embrace and give her a little kiss on the cheek before collecting your [armor] and heading out.");
			player.sexReward("cum","Anal");
			cleanupAfterCombat();
		}
		
		//LOSS! GET RAPED!
		public function loseToPhoenix():void {
			clearOutput();
			if (player.HP <= player.minHP()) {
				flags[kFLAGS.PHOENIX_HP_LOSS_COUNTER]++;
				if (flags[kFLAGS.PHOENIX_HP_LOSS_COUNTER] >= 4) {
					phoenixBadEnd();
					return;
				}
			}
			if (doSFWloss()) return; //No rape in SFW mode.
			outputText("You collapse to the rocky ground, far too " + (player.lust >= player.maxLust() ? "turned on": "drained") + " to continue the fight. The phoenix smirks as you drop, carefully shedding her tattered clothing to expose her lush hips and breasts before making her way over to you, swaying sensuously with each step. ");
			outputText("\n\n\"<i>I was just going to kill you and be done with it,</i>\" her hand grasps your chin as she speaks, turning your head up so that you can see both her gloating face and the throbbing, fully erect lizardcock that juts out above her soaked snatch. \"<i>But after that pathetic performance, I think I've come up with a much better use for you...</i>\"");
			if (player.hasCock() && rand(2) == 0) {
				doNext(cockwielderLossScenePart1);
			}
			else {
				doNext(getRapedInTheAss);
			}
		}
		public function loseToPhoenix1():void {
			clearOutput();
			if (player.HP <= player.minHP()) {
				flags[kFLAGS.PHOENIX_HP_LOSS_COUNTER]++;
				if (flags[kFLAGS.PHOENIX_HP_LOSS_COUNTER] >= 4) {
					phoenixBadEnd();
					return;
				}
			}
			if (doSFWloss()) return; //No rape in SFW mode.
			outputText("You collapse to the rocky ground, far too " + (player.lust >= player.maxLust() ? "turned on": "drained") + " to continue the fight. The phoenixes smirks as you drop, then after short and heated talks one of them carefully shedding her tattered clothing to expose her lush hips and breasts before making her way over to you, swaying sensuously with each step. ");
			outputText("\n\n\"<i>We were just going to kill you and be done with it,</i>\" her hand grasps your chin as she speaks, turning your head up so that you can see both her gloating face and the throbbing, fully erect lizardcock that juts out above her soaked snatch. \"<i>But after that pathetic performance, We've come up with a much better use for you...</i>\"");
			if (player.hasCock() && rand(2) == 0) {
				doNext(cockwielderLossScenePart1);
			}
			else {
				doNext(getRapedInTheAss);
			}
		}
		
		//Procs 50% of the time for someone with cock.
		public function cockwielderLossScenePart1():void {
			clearOutput();
			outputText("The girl shoves her foot into your shoulder, forcing you onto your back whilst giving you a perfect view of her puffy cunt, the lips swollen and slightly parted in anticipation. You hit the ground with a grunt, in no shape to resist after the exhausting fight. The phoenix quickly strips your lower body of its armour as you try desperately to prepare yourself for what's to come, her cock beginning to drip precum as she stands over you, the warm fluid drizzling over your own shamefully hardening member. The sensation makes you groan huskily and squeeze your eyes closed, your head craning backwards as your back arches, [cock] jumping at the feeling of being slathered in the phoenix's potent seed. Your groan intensifies when you feel something soft and scaly press firmly onto your slick shaft, a deep moan rumbling in your throat as your sensitive flesh is forced against your stomach. ");
			outputText("\n\nForcing an eye open despite the pleasure, you prop yourself up on your elbows to get a good look at what the phoenix is doing to you, biting back another moan as your throbbing meat is gripped tightly by the smooth scales pressing against it. Looking down your body, you finally see that the girl has her foot planted on your length, gripping it with her dexterous toe-claws as she grinds the sole against you, forcing beads of precum out of your tip that are quickly staining the remainder of your [armor].");
			outputText("\n\n\"<i>I've decided exactly how to I'm going to deal with you,</i>\" every word out of her mouth is punctuated with an extra hard stroke along your shaft, or a maddeningly pleasurable squeeze, \"<i>I'm going to use you to make more of us. Phoenixes, I mean. It'll be ironic or something.</i>\" A shudder runs up your spine as she circles your frenulum with the tip of a claw, the danger only increasing how good it feels to your addled brain. \"<i>It's perfect, you'll be carrying on the work that you tried so hard to ruin before. Shame that you can't be the one to lay them, but I guess I'll just have to make this part as unpleasant for you as I can.</i>\"");
			outputText("\n\nTo hammer her point home, she slips your meat between two of her toes, then clenches it hard. You cry out at the agonizing mix of pain and pleasure, cock spurting a small stream of pre that hits your neck, the feeling of your own seed seeping inside the front of your armour leaving your cheeks burning with both shame and lust. A short laugh bursts out of the hybrid at the sight of you getting off to her abuse, at the same time she starts to caress her body as her soft scales continue to tease you. ");
			outputText("\n\nThe sight of the phoenix teasing herself in tandem with you is almost unbearable to your desire-filled mind and your hips start thrusting upwards unconsciously as she cups one of her ample tits, her other hand slowly wrapping around her still-dripping shaft. She pinches her hard nipple between two fingers, drawing out a sultry moan as her hand starts to slowly pump at her stiff, purple shaft. Whenever she reaches the base of her member, she brushes a claw against the top of her glistening pussy, eliciting a breathless gasp and a sharp burst of pleasure for you as her foot squeezes your cock slightly.");
			outputText("\n\nYour breathing grows heavy, arms quickly becoming too tired to support your body and you fall back to the ground, exhausted so much by the skillful touch of the phoenix that you can do little more than weakly hump against her foot. The sheer amount of precum slathering your stomach and shaft means that the girl's foot can barely grip you as it slides back and forth. With every stroke of her soft scales the drooling seed starts to run further " + (player.balls > 0 ? "over your swollen [sack], your body shuddering at the sensation, before it spills ": "") + "down your hips to soak the ground beneath you. The phoenix herself does little to help the situation as her own cock liberally leaks all over your crotch, her foot mixing both of your fluids as she grinds endlessly against you. A dark chuckle breaks the sound of wet flesh sliding together and your eyes shoot open, concern suddenly filling you despite how horny you are. The girl has taken on an air of superiority, and there's just something about her grin making you feel somewhat unea- <b>WHAT IS THAT?</b> ");
			doNext(cockwielderLossScenePart2);
		}
		
		public function cockwielderLossScenePart2():void {
			clearOutput();
			outputText("A prodding sensation starts probing at your ass, slowly working it's way between your cheeks. Before you have time to twist away, the previously gentle poking suddenly shifts gear, thrusting sharply into you, the quiet moans you were mumbling previously replaced with a hoarse scream as your [asshole] is roughly violated. Your body jerks upwards, mashing your cock between you and the foot gripping it. Without warning, your [cock] spasms, blasting out a sizeable spurt of cum that lands in your open, yelling mouth. The sticky, salty load nearly makes you gag as it hits the back of your throat and you swallow it reflexively. The harpy bursts out laughing as you struggle under her grip, head thrown back and tits shaking seductively as she fails to contain her mirth.");
			outputText("\n\n\"<i>You- You're actually getting off to this!</i>\" The surprise in the girl's voice is clear, though you can barely register it in your painfully pleasured state. Your eyes water as what can only be the phoenix's tail forces its way inside your body, writhing and squirming inside your ass as it works deeper and deeper. \"<i>I thought you were supposed to be some kind of big, bad hero, but here you are giving yourself a facial because I'm <b>pegging</b> you!</i>\" Her mocking words sting, though not as much as the scaly shaft as it continues to slide into you. The heat of the thing is incredibly uncomfortable and you find yourself wiggling your hips trying to work it out of you. However, the fiery harpy is having none of it though and presses her foot down even harder, pinning you in place as her tail continues to stretch your ass with an agonizing slowness. ");
			outputText("\n\nYou can only summon a strangled cry as she leans over you and puts as much of her weight into holding you down as she can whilst still stroking her cock, aiming it so that the drooling pre drips onto her tail apparently hoping to use the lubrication to stuff even more of the flexible muscle inside you. As she spreads you your member strains against the supple, scaled flesh on the sole of her foot, jumping and releasing another rope of precum that splatters messily across your chest with every inch stuffs into you. ");
			outputText("\n\nThe phoenix's seed starts to seep between her tail and your sphincter, easing its passage ever so slightly. As if she was waiting for this extra give, she pushes hard and her tail suddenly shifts with no warning, jumping deep into you and stretching your walls.");
			player.buttChange(30, true, true, true);
			outputText("The tip of her flexing limb flicks against your prostate and you whine, unable to move your lower body to escape the sensation, your [cock] too tightly held to let you release.");
			outputText("\n\nAs she continues you insult you her hand leaves her chest and snakes down her body, stroking and squeezing whenever she feels your ass spasm around her tail. Bending as she follows her leg down to where it holds you in place, her fingers slide through the mess of precum that has built up from her unstoppable teasing. She splays her hand around your member, foot sliding downwards and away from you as she gets a grip just as tight as before, never once giving you enough of an opportunity to let yourself climax. She smirks at you again as she starts to move over you, every twitch of her hips shifting the thick length inside you, your overly sensitive ass clenching at every tiny sensation.");
			outputText("\n\nHer hips move into position above yours and she lowers herself, crouching so that she can just brush your [cock] against her soaked pussy, mixing her own juices with your pre as she runs your tip up and down the cleft between her legs. She keeps her other hand firmly fixed on her own dick, smearing some precum along its length as she rubs herself in sync with her gentle teasing of you. You groan as she wiggles her hips, parting her lips slightly and letting you dip tantalizingly inside her as she presses her tail against your prostate again. ");
			outputText("\n\nWith your body so desperate for release, you can barely recall that she's only using you to breed more of her dangerous, half-breed race, much less summon the will to care about such a thing. At this point you'd willingly help her father an entire generation if she'd just let you finish this one time. Your mind urges you to try and beg her, plead with her to give release to your aching shaft, but all that comes from your mouth is another agonizingly pleasure-filled moan.");
			outputText("\n\nHer mouth twists into a sideways smile as your drawn out cry fills the air. She seems to get the message though, apparently satisfied that she's displayed exactly how weak you are in comparison to her. Her body starts to descend, lips spreading so slowly over your [cock] that you fear that your mind will explode with desire if she keeps you on edge any longer. As if on cue, her hand relents around the base of your manhood and she slams herself down, gasping as you fill her utterly. Her hot, wet depths are utter bliss to your abused member, the sweet tightness a welcome change to the painful, vice-like grip that had held you previously. Unable to even consider containing yourself, your balls tighten and your shaft spasms wildly within her even as you feel her tip thrash wildly inside you, repeatedly smacking against your prostate in an attempt to force every drop out of you. ");
			outputText("\n\nYour hands claw uselessly at the ground as your length is finally freed, every muscle in your body tensing while you thrust up against her luscious ass, your hips slapping into her lush cheeks with an obscenely wet slap as you finally, joyously, agonizingly explode into her. A choked scream bursts from your mouth, mingling with the phoenix's own keening call as she feels her pussy being packed full by your pent-up, long overdue load. Her tail wriggles uncontrollably within you whilst her hands work her shaft, body bouncing up and down ferociously on yours, lewdly forcing out more of your impressive load with each thrust even as her convulsing channel is continuously refilled by your throbbing member.");
			outputText("\n\n\"<i>Don't stop, you useless puddle of minotaur spunk!</i>\" Her breathless voice is almost lost against the increasingly loud sound of your bodies mashing together, her ample tits almost mesmerising as they bounce with her, rippling with each abrupt change of direction. \"<i>Just a little more, I'm almost there...</i>\" She trails off into a high-pitched moan, her face scrunching up as her hands seem to almost double their speed, the pace of her self-love sending drops of her precum all over your chest.");
			outputText("\n\nJust as you feel your own orgasm finally come to a merciful end, cock squeezing out the last few drops of your impressive load, her pussy starts to contract around you, making you inhale sharply. With one final rise that almost pulls her convulsing sex completely off you, she crashes back down and forces you to the ground, hips firmly holding you in place whilst your seed leaks out around her spasming lips as she finally climaxes.");
			outputText("\n\nGripping her pulsing cock tightly with one hand, she uses the other to reach over and grab you by the hair, yanking your head up so that the first streamer of her cum hits you square between the eyes. The second sprays across your forehead, a thick dollop splattering in your hair whilst the third covers your nose and upper lip. Your body is too focused on the feeling of her cunt squeezing your hyper-sensitive [cock] to try and avoid her facial treatment, leaving you with no recourse but to grimace and keep your eyes closed as she lathers your face with spurt after spurt.");
			outputText("\n\nEventually, thankfully, her orgasm finishes, shaft finally growing soft in her hands after plastering your face with a thick coating of her warm milk. Her cunt still trembles occasionally around your cock, keeping the abused flesh from going completely soft. You can feel the massive amount of seed that you released inside her as she moves, hips wiggling from side to side as if to stimulate your exhausted body even further. After a few minutes of heaving breaths, she begins to lift off your half-erect prick, her tail mercifully withdrawing itself for your still-spasming sphincter at the same time. ");
			outputText("\n\nHowever, just before her lips fully remove themselves from your flagging cock, the mass of semen inside her starting to dribble out and down your already soaked shaft, she suddenly drives herself back down you and re-reams your ass with her still-burning tail. You gasp as your [cock] jumps back to attention inside her, the sheer amount of semen sloshing around meaning her tight walls find almost no purchase on you.");
			outputText("\n\n\"<i>Oh, sorry, did you think this was just going to be a quickie?</i>\" She rolls her hips against you, slapping her quickly hardening cock against your cum-stained stomach as she speaks. \"<i>I told you I was going to use you to make more phoenixes, but I can't risk your sperm being as worthless as you are and not getting me knocked up.</i>\" Each bounce forces another ragged breath out of you, vision beginning to dim from the combination of your fatigued body and the rough treatment you're receiving. \"<i>I'm going to have to get every single drop out of you, just to make sure. I told you I'd make it unpleasant, at least for you.</i>\" Her voice descends into a barrage of snide chuckles as she resumes riding you in earnest, her tail still rubbing against your prostate to ensure that you'll be thoroughly milked, regardless of how awake you are for it. The thought of being used as nothing more than a pleasurable seed factory for this bird bitch is the last thing that flashes through your mind before the dark fog descends.");
			player.sexReward("cum","Default",true,false);
			doNext(cockwielderLossScenePart3);
		}
		
		public function cockwielderLossScenePart3():void {
			cleanupAfterCombat();
			clearOutput();
			outputText("You come to your senses a few hours later, barely able to open your eyes and feeling like you’ve just been fed through a thresher. Every movement is agony to your worn, abused body, but you manage to bring a hand to your face, shivering as your fingers sink into a thick layer of cold, congealed spunk. As you start wiping away as much as possible, you can only guess how at the number of orgasms it took for the phoenix to build up such a thick coating. You jerkily start to sit up, moving as slowly as possible to try and avoid overwhelming your cramped muscles.");
			outputText("\n\nLooking down at your filth-encrusted body, you wince at the state of your [armor], then nearly gag as you see the ungodly amount of half-dried spunk that covers your crotch. The cold, jelly-like liquid clings to your [cock], slowly dripping down to the floor in huge globules that run along your shaft. The feeling makes your cock twitch and you instantly cry out, painfully realising that one of the after-effects of getting ridden for so long is an incredible amount of soreness.");
			outputText("\n\nYou look around, just in case that feathery bitch is still around and just waiting for you to feel safe, but you only spy a trail of spunk leading away from you. A closer look reveals that the path it marks out bears a heavy resemblance to the way a drunk would stagger after a long night at the tavern. Reasoning that she’ll probably be out of the way for a while, you start to look for the rest of your armour, finally spotting it lying a few feet away from you, blissfully untouched by the multitude of fluids that have stained the ground in the immediate area. ");
			outputText("\n\nYou carefully clean around your crotch as best you can, wiping a ridiculous amount of dubious fluid from your stomach" + (player.tailType > 0 ? ", tailbase": "" )+ " and thighs. All the while your ass throbs with pain, still spasming slightly from the intense stretching it received both before and after your little nap. Clenching your teeth in hopes of shutting out the pain, you start to climb to your feet, too wary of the pain to risk cleaning your flaccid member. Instead you leave it swinging freely between your legs, every so often dripping a huge blob of half-congealed spunk that splatters onto your feet. ");
			outputText("\n\nYou gingerly take a couple of steps, all too aware of the stinging of your stretched ass, before stopping as something begins to seep down your inner thigh. Your heart sinks as you reach back behind you, fingers trailing between your legs until you find a streak of wet, still slightly warm. ");
			outputText("\n\nAlmost too afraid to look, you bring your fingers back around to find them covered with a layer of cum, groaning out loud as you quickly piece together that the phoenix must’ve decided to blow her last load in your now-impossibly sensitive ass. The gentle sloshing in your gut coupled with how much warm spunk is now leaking out of your abused body leaves you to suspect that the girl took her time with you. After grabbing your scattered gear as quickly as possible and finding your gem pouch a little lighter, you start to hobble back to camp, desperate for some rest after this ordeal. ");
			outputText("\n\nToo pained to redress yourself, the spunk dripping from you marks out your path back down the mountain, almost as if the gods are making sure you have a way of finding the route back for another round.");
			player.addCurse("str",2,2);
			player.sexReward("cum","Vaginal");
			player.sexReward("cum","Anal");
			dynStats("tou", -2);
			doNext(camp.returnToCampUseFourHours);
		}
		
		//Get butt-raped. Lose your anal virginity!
		public function getRapedInTheAss():void {
			clearOutput();
			outputText("The phoenix shoves you down on the ground. You struggle to get up but the girl just pins you down. \"<i>I'm going to ravage your ass,</i>\" she says with a smirk.");
			outputText("\n\nShe slowly pulls off the bottom half of your [armor], surveying your [butt]. She commands you to get into doggy position. You have no choice but to obey. You get on all fours. You can only prepare for whatever's coming.");
			outputText("\n\nShe stands in front of you and moves her loincloth aside, exposing her lizard cock and pussy. Without warning, she buries her cock length into your mouth to get it covered in saliva. With her cock well-lubricated, she gets behind you.");
			if (player.looseness(false) == 0) outputText("\"<i>I see you've got virgin ass. Not anymore once I start!</i>\" She gives you a smug grin.");
			outputText("\n\n\"<i>Get ready! I'm going to pound you so <b>HARD</b>!</i>\" She announces. She grabs your [butt] and moves her hips back. Suddenly, she slams her entire cock length into your [asshole], causing you to yelp in pain.");
			player.buttChange(12, true, true, true);
			outputText("\n\n\"<i>After all this... You really deserve this. Now enjoy it,</i>\" she says. She hammers repeatedly into your [asshole], stretching it.");
			outputText("\n\nShe gives your [butt] a hard spank. <b>SPANK!</b> She spanks your butt-cheeks again. <b>SPANK!</b> The repeatedly spankings cause your backside to turn red and sore.");
			if (flags[kFLAGS.WATERSPORTS_ENABLED] >= 1 && rand(2) == 0) {
				outputText("\n\nShe stops and pulls out. \"<i>I'll give you something you'll never forget,</i>\" she says.  She aims her cock towards you and... By Marae! She's peeing all over you! Her urine feels warmer than usual; this could be attributed to the fiery nature of the phoenix. Eventually, she does stop peeing and gets back to fucking your [asshole].");
			}
			outputText("\n\nThe phoenix gives you a final thrust as she unloads her phoenix-seed deep into your bowels. The orgasm seems to never end and by the time she's done, you feel slightly stuffed.");
			outputText("\n\nThe orgasm triggers yours. You");
			if (player.hasCock()) outputText(" shoot ropes of jism from your [cocks]");
			if (player.hasCock() && player.hasVagina()) outputText(" while you also");
			if (player.hasVagina()) {
				if (player.averageVaginalWetness() < 4) outputText(" leak girlcum");
				else outputText(" squirt lubricant everywhere");
			}
			if (player.gender == 0) outputText("r body spasms with pleasure");
			outputText(". \"<i>I hope you've learned your lesson,</i>\" she says as she pulls her cock out of your leaking backdoor. She wipes her cock clean on your [armor], before she moves her loincloth back in place. \"<i>See you around!</i>\" The phoenix says with a wink as she walks off.");
			player.addCurse("str",1,2);
			player.sexReward("cum","Anal");
			cleanupAfterCombat();
		}
		
		//Non-sexy bad end, loss by HP 4 times in a row.
		public function phoenixBadEnd():void {
			clearOutput();
			outputText("\"<i>Seriously? I've beaten you several times in a row? I guess... I've made a final decision; you must die. I'm sorry but I have to,</i>\" the phoenix says.");
			outputText("\n\n\"<i>The harpy queen will be avenged,</i>\" she says with a glare on your face. She raises her scimitar. You look up at the sharp blade. You clearly know where it's going.");
			outputText("\n\n\"<i>Hasta la vista, baby!</i>\" These are the last words you hear as the speeding scimitar finally makes contact with your neck.");
			rawOutputText("\n\n[DATA EXPUNGED]");
			EventParser.gameOver();
		}
	}
}