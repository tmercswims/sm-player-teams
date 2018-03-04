#include <sourcemod>
#include <cstrike>

public Plugin myinfo =
{
    name = "Get Teams",
    author = "Thomas Mercurio",
    description = "Gets the members of each team",
    version = "1.0",
    url = "https://github.com/tmercswims/sm-player-teams"
};

public void OnPluginStart()
{
    RegServerCmd("sm_player_teams", Player_Teams);
}

public Action Player_Teams(int args)
{
    for (int i = 1; i < MaxClients; i++)
    {
        if (IsClientInGame(i) && !IsFakeClient(i))
        {
            char steamID[64];
            GetClientAuthId(i, AuthId_Engine, steamID, 64);
            PrintToServer("%s;%d", steamID, GetClientTeam(i));
        }
    }
    return Plugin_Handled;
}
