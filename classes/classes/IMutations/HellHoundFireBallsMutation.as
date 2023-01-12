/**
 * Original code by aimozg on 27.01.14.
 * Extended for Mutations by Jtecx on 14.03.22.
 */
package classes.IMutations
{
import classes.PerkClass;
import classes.PerkLib;
import classes.IMutationPerkType;
import classes.Creature;
import classes.Player;
import classes.Races;

public class HellHoundFireBallsMutation extends IMutationPerkType
    {
        private static const mName:String = "Hellhound Fire Balls";
        //v1 contains the mutation tier
        override public function mDesc(params:PerkClass, pTier:int = -1):String {
            var descS:String = "";
            pTier = (pTier == -1)? currentTier(this, player): pTier;
            if (pTier >= 1){
                descS = "Increase Hellfire damage and Cum production by 25%. +"+(5*pTier)+" Lib.  ";
            }
            if (pTier >= 2){
                descS += "Increase fire damage by a percentage based on 0.5% of your cum production.  ";
            }
            if (pTier >= 3){
                descS += "Double the fire damage percentage bonus from cum production.  ";
            }
            if (pTier >= 4){
                descS += "Double your cum production.  ";
            }
            if (pTier >= 4){
                descS += "If you have the Alpha howl perk you may now forcibly recruit hellhounds into your pack equal to the number of werewolves you may control.";
            } else if (pTier >= 2){
                descS += "If you have the Alpha howl perk you may now forcibly recruit hellhounds into your pack equal to half the number of werewolves you may control.";
            }
            return descS;
        }

        //Name. Need it say more?
        override public function name(params:PerkClass=null):String {
            var sufval:String;
            switch (currentTier(this, player)){
                case 2:
                    sufval = "(Primitive)";
                    break;
                case 3:
                    sufval = "(Evolved)";
                    break;
                case 4:
                    sufval = "(Final Form)";
                    break;
                default:
                    sufval = "";
            }
            return mName + sufval;
        }

        //Mutation Requirements
        override public function pReqs():void{
            try{
                var pTier:int = currentTier(this, player);
                //This helps keep the requirements output clean.
                this.requirements = [];
                if (pTier == 0){
                    this.requireBallsMutationSlot()
                    .requireRace(Races.CERBERUS);
                }
                else{
                    var pLvl:int = pTier * 30;

                    this.requireLevel(pLvl)
                    .requireCustomFunction(function (player:Player):Boolean {
                        return player.perkv2(IMutationsLib.HellhoundFireBallsIM) > pLvl*2
                    }, "Rapes with dick: "+player.perkv2(this)+"/"+pLvl*2);
                }
            }catch(e:Error){
                trace(e.getStackTrace());
            }
        }

        //Mutations Buffs
        override public function buffsForTier(pTier:int):Object {
            var pBuffs:Object = {};
            pBuffs['lib.mult'] = 0.05 * currentTier(this, player);
            return pBuffs;
        }

        public function HellHoundFireBallsMutation() {
            super(mName + " IM", mName, SLOT_TESTICLES, 4);
        }

    }
}