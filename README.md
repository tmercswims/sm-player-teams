# sm-player-teams

This is a very simple SourceMod plugin which adds a single command: `sm_player_teams`. It prints a list of all the player's Steam IDs, and a number indicating which team they are on, in the following format:

```
<steam_id>;<team>
```

Where `<team>` is `2` for Terrorists and `3` for Counter-Terrorists.

This was created for use in one of my cogs for [Red-DiscordBot](https://github.com/Cog-Creators/Red-DiscordBot), [retakechannels](https://github.com/tmercswims/tmerc-cogs/tree/master/retakechannels).

To install, simply put `getteams.smx` in `csgo/addons/sourcemod/plugins/`.
