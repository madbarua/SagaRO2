using System;
using System.Collections.Generic;

using SagaMap;
 
using SagaDB.Actors;
using SagaDB.Items;

namespace Prt_f01
{
    public class Paskel : Npc
    {
        public override void OnInit()
        {
            MapName = "Prt_f01";
            Type = 1160;
            Name = "Paskel";
            StartX = 9088F;
            StartY = 90783F;
            StartZ = 4192;
            Startyaw = 35768;
            SetScript(3);
            AddButton(Functions.EverydayConversation, new func(OnButton));
        }

        public void OnButton(ActorPC pc)
        {
            NPCChat(pc, 823);
        }

    }
}