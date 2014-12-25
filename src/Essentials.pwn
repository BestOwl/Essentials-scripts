 #include <a_samp>
#include <fixes>
#define COLOR_WHITE 		0xFFFFFFFF
#define COLOR_NORMAL_PLAYER 0xFFBB7777
#define COLOR_GREEN         0x33AA33AA
#define COLOR_RED           0xAA3333AA
#define COLOR_YELLOW        0xFFFF00AA
#define COLOR_BLUE          0x0000BBAA
#define COLOR_ORANGE        0xFF9900AA
#define COLOR_BROWN         0xFFBB7796
#define COLOR_GOLD          0xFFD700FF

#define CITY_LOS_SANTOS 	0
#define CITY_SAN_FIERRO 	1
#define CITY_LAS_VENTURAS 	2
enum
{
    DIALOG_LOGIN,
    DIALOG_WELCOME,
    DIALOG_WEAPONS,
    DIALOG_BUY_WEAPONS,
    DIALOG_SANDA,
    DIALOG_BUQIANG,
    DIALOG_CHONGFENG,
    DIALOG_JUJI,
    DIALOG_ADMIN,
    DIALOG_GAMEMODE,
    DIALOG_INDEX,
    DIALOG_TELEPORT,
    DIALOG_MAP,
	DIALOG_MAP1,
	DIALOG_CAR,
	DIALOG_OTHER

}


public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	   if (newkeys == KEY_YES)//按Y打开帮助
	   {
	   ShowPlayerDialog(playerid, DIALOG_INDEX, DIALOG_STYLE_LIST, "游戏帮助", "游戏模式\n传送\n武器店\n其他帮助", "选择", "退出");
       return 1;
	   }
	   
       return 0;
}
//------------------------------------------------------------------------------------
public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_INDEX)
    {
        if(response) // If they clicked 'Select' or double-clicked a weapon
        {

            switch(listitem)
            {
                case 0: ShowPlayerDialog(playerid, DIALOG_GAMEMODE, DIALOG_STYLE_LIST,"游戏模式","竞速模式\n枪战模式","选择","退出");
				case 1: ShowPlayerDialog(playerid, DIALOG_TELEPORT, DIALOG_STYLE_LIST,"传送地点","注意:传送将会-$1000\n洛杉矶机场\n旧金山机场\n拉斯维加斯机场\n沙漠机场\n51区\n千年山\nCJ\n飞车点\n洛杉矶大楼\n雷达站\n沙漠军营\n自行车广场","选择","退出");
	            case 2: ShowPlayerDialog(playerid, DIALOG_WEAPONS, DIALOG_STYLE_LIST,"武器店","快速购买\n到地图上武器图标处购买","确定","退出");
	            case 3: ShowPlayerDialog(playerid, DIALOG_OTHER, DIALOG_STYLE_LIST,"其他","去医院和吃东西可以回血\n不要在普通模式下杀人,否则,你的金钱将清零\n做任务和竞赛可以获得金钱","确定","退出");
      
            }
        }
        return 1; 
    }
//-----------------------------------------------------------------------------------------
	if(dialogid == DIALOG_GAMEMODE)//模式地图
	{
	    if(response)
	    {
			switch(listitem)
			{
				case 0: ShowPlayerDialog(playerid, DIALOG_MAP, DIALOG_STYLE_LIST,"选择地图","雷达站-沙漠\n旧金山","选择","退出");
				case 1: ShowPlayerDialog(playerid, DIALOG_MAP1, DIALOG_STYLE_LIST,"选择地图","丛林\n大桥(狙击战)","选择","退出");
			}
		return 1;
		}
	}

//--------------------------------------------------------------------------------------------
	if(dialogid == DIALOG_TELEPORT)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 1:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1882.5127,-2394.8882,15.9962);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到洛杉矶机场",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 2:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-1280.9860,34.7376,14.1484);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到旧金山机场",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 3:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1306.4828,1263.1798,14.2656);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到拉斯维加斯机场",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 4:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,410.6866,2533.3049,19.1484);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到沙漠机场",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 5:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-1395.3844,495.4403,19.5001);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到51区",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 6:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-2409.9893,-2189.7646,34.0391);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到千年山",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 7:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,2494.9663,-1689.0300,14.1760);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到CJ",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 8:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-664.3608,2305.4812,136.1664);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到飞车点",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 9:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1571.9547,-1324.8702,16.4832);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到洛杉矶大楼",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 10:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-299.3162,1540.0366,75.5625);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到雷达站",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 11:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,284.1888,1951.2494,17.6406);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到沙漠军营",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 12:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足,无法传送");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1863.6995,-1384.7767,13.4845);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"玩家[%s]花费了$1000传送到自行车广场",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
			}
		return 1;
		}
	}
//-----------------------------------------------------------
	if(dialogid == DIALOG_WEAPONS)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 0:ShowPlayerDialog(playerid, DIALOG_BUY_WEAPONS, DIALOG_STYLE_LIST,"快速购买","注意:快速购买价格x10\n狙击枪\n散弹枪\n步枪\n冲锋枪","选择","退出");
			}
		return 1;
		}
	}
//---------------------------------------------------------------------------------------------------
	if(dialogid == DIALOG_BUY_WEAPONS)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 1:ShowPlayerDialog(playerid, DIALOG_JUJI, DIALOG_STYLE_LIST,"狙击枪","狙击步枪 $5000","选择","退出");
			   case 2:ShowPlayerDialog(playerid, DIALOG_SANDA, DIALOG_STYLE_LIST,"散弹枪","Shotgun $600","选择","退出");
			   case 3:ShowPlayerDialog(playerid, DIALOG_BUQIANG, DIALOG_STYLE_LIST,"步枪","M4 $4500\nAK-47 $3500","选择","退出");
			   case 4:ShowPlayerDialog(playerid, DIALOG_CHONGFENG, DIALOG_STYLE_LIST,"冲锋枪","MP5 $500\nTec-9 $300","选择","退出");
			}
		return 1;
		}
	}

//---------------------------------------------------------------
	if(dialogid == DIALOG_JUJI)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 0:if(GetPlayerMoney(playerid)<5000){SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足");}else{GivePlayerWeapon(playerid,34,10);GivePlayerMoney(playerid,-5000);}
			}
		return 1;
		}
	}
//---------------------------------------------------------------
	if(dialogid == DIALOG_SANDA)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 0:if(GetPlayerMoney(playerid)<600){SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足");}else{GivePlayerWeapon(playerid,25,15);GivePlayerMoney(playerid,-600);}
			}
		return 1;
		}
	}
//-------------------------------------------------
	if(dialogid == DIALOG_BUQIANG)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 0:if(GetPlayerMoney(playerid)<4500){SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足");}else{GivePlayerWeapon(playerid,31,270);GivePlayerMoney(playerid,-4500);}
			   case 1:if(GetPlayerMoney(playerid)<3500){SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足");}else{GivePlayerWeapon(playerid,30,270);GivePlayerMoney(playerid,-3500);}
			}
		return 1;
		}
	}
//---------------------------------------
	if(dialogid == DIALOG_CHONGFENG)
	{
		if(response)
		{
			switch(listitem)
			{
			   case 0:if(GetPlayerMoney(playerid)<500){SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足");}else{GivePlayerWeapon(playerid,29,116);GivePlayerMoney(playerid,-500);}
			   case 1:if(GetPlayerMoney(playerid)<300){SendClientMessage(playerid,COLOR_YELLOW,"你的金钱不足");}else{GivePlayerWeapon(playerid,32,60);GivePlayerMoney(playerid,-300);}
			}
		return 1;
		}
	}
    return 0;
}
