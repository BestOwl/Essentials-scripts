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
	   if (newkeys == KEY_YES)//��Y�򿪰���
	   {
	   ShowPlayerDialog(playerid, DIALOG_INDEX, DIALOG_STYLE_LIST, "��Ϸ����", "��Ϸģʽ\n����\n������\n��������", "ѡ��", "�˳�");
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
                case 0: ShowPlayerDialog(playerid, DIALOG_GAMEMODE, DIALOG_STYLE_LIST,"��Ϸģʽ","����ģʽ\nǹսģʽ","ѡ��","�˳�");
				case 1: ShowPlayerDialog(playerid, DIALOG_TELEPORT, DIALOG_STYLE_LIST,"���͵ص�","ע��:���ͽ���-$1000\n��ɼ����\n�ɽ�ɽ����\n��˹ά��˹����\nɳĮ����\n51��\nǧ��ɽ\nCJ\n�ɳ���\n��ɼ��¥\n�״�վ\nɳĮ��Ӫ\n���г��㳡","ѡ��","�˳�");
	            case 2: ShowPlayerDialog(playerid, DIALOG_WEAPONS, DIALOG_STYLE_LIST,"������","���ٹ���\n����ͼ������ͼ�괦����","ȷ��","�˳�");
	            case 3: ShowPlayerDialog(playerid, DIALOG_OTHER, DIALOG_STYLE_LIST,"����","ȥҽԺ�ͳԶ������Ի�Ѫ\n��Ҫ����ͨģʽ��ɱ��,����,��Ľ�Ǯ������\n������;������Ի�ý�Ǯ","ȷ��","�˳�");
      
            }
        }
        return 1; 
    }
//-----------------------------------------------------------------------------------------
	if(dialogid == DIALOG_GAMEMODE)//ģʽ��ͼ
	{
	    if(response)
	    {
			switch(listitem)
			{
				case 0: ShowPlayerDialog(playerid, DIALOG_MAP, DIALOG_STYLE_LIST,"ѡ���ͼ","�״�վ-ɳĮ\n�ɽ�ɽ","ѡ��","�˳�");
				case 1: ShowPlayerDialog(playerid, DIALOG_MAP1, DIALOG_STYLE_LIST,"ѡ���ͼ","����\n����(�ѻ�ս)","ѡ��","�˳�");
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
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1882.5127,-2394.8882,15.9962);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵���ɼ����",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 2:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-1280.9860,34.7376,14.1484);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵��ɽ�ɽ����",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 3:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1306.4828,1263.1798,14.2656);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵���˹ά��˹����",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 4:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,410.6866,2533.3049,19.1484);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵�ɳĮ����",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 5:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-1395.3844,495.4403,19.5001);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵�51��",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 6:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-2409.9893,-2189.7646,34.0391);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵�ǧ��ɽ",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 7:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,2494.9663,-1689.0300,14.1760);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵�CJ",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 8:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-664.3608,2305.4812,136.1664);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵��ɳ���",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 9:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1571.9547,-1324.8702,16.4832);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵���ɼ��¥",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 10:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,-299.3162,1540.0366,75.5625);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵��״�վ",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 11:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,284.1888,1951.2494,17.6406);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵�ɳĮ��Ӫ",xm);
			          SendClientMessageToAll(COLOR_WHITE,cs);}
               case 12:
                      if(GetPlayerMoney(playerid)<1000){
                      SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����,�޷�����");}
                      else{
			          GivePlayerMoney(playerid,-1000);
			          SetPlayerPos(playerid,1863.6995,-1384.7767,13.4845);
			          new xm[24]; new cs[256];
			          GetPlayerName(playerid,xm,24);
			          format(cs,256,"���[%s]������$1000���͵����г��㳡",xm);
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
			   case 0:ShowPlayerDialog(playerid, DIALOG_BUY_WEAPONS, DIALOG_STYLE_LIST,"���ٹ���","ע��:���ٹ���۸�x10\n�ѻ�ǹ\nɢ��ǹ\n��ǹ\n���ǹ","ѡ��","�˳�");
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
			   case 1:ShowPlayerDialog(playerid, DIALOG_JUJI, DIALOG_STYLE_LIST,"�ѻ�ǹ","�ѻ���ǹ $5000","ѡ��","�˳�");
			   case 2:ShowPlayerDialog(playerid, DIALOG_SANDA, DIALOG_STYLE_LIST,"ɢ��ǹ","Shotgun $600","ѡ��","�˳�");
			   case 3:ShowPlayerDialog(playerid, DIALOG_BUQIANG, DIALOG_STYLE_LIST,"��ǹ","M4 $4500\nAK-47 $3500","ѡ��","�˳�");
			   case 4:ShowPlayerDialog(playerid, DIALOG_CHONGFENG, DIALOG_STYLE_LIST,"���ǹ","MP5 $500\nTec-9 $300","ѡ��","�˳�");
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
			   case 0:if(GetPlayerMoney(playerid)<5000){SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����");}else{GivePlayerWeapon(playerid,34,10);GivePlayerMoney(playerid,-5000);}
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
			   case 0:if(GetPlayerMoney(playerid)<600){SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����");}else{GivePlayerWeapon(playerid,25,15);GivePlayerMoney(playerid,-600);}
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
			   case 0:if(GetPlayerMoney(playerid)<4500){SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����");}else{GivePlayerWeapon(playerid,31,270);GivePlayerMoney(playerid,-4500);}
			   case 1:if(GetPlayerMoney(playerid)<3500){SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����");}else{GivePlayerWeapon(playerid,30,270);GivePlayerMoney(playerid,-3500);}
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
			   case 0:if(GetPlayerMoney(playerid)<500){SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����");}else{GivePlayerWeapon(playerid,29,116);GivePlayerMoney(playerid,-500);}
			   case 1:if(GetPlayerMoney(playerid)<300){SendClientMessage(playerid,COLOR_YELLOW,"��Ľ�Ǯ����");}else{GivePlayerWeapon(playerid,32,60);GivePlayerMoney(playerid,-300);}
			}
		return 1;
		}
	}
    return 0;
}
