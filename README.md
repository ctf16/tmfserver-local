# Oblivion's TrackMania Forever Server

A simple TMF server that runs locally on Windows 11.

## DISCLAIMERS

All rights are reserved to the original authors of the software.

XASECO - Copyright © 2007-2026 Frans P. de Vries
TrackmaniaServer.exe - Copyright © Ubisoft Nadeo
Plugins - Copyright © [Respective Authors](https://plugins.xaseco.org/browse.php)

## Prerequisites

You MUST have 2 TMNF+ accounts. One runs the server, and the other plays the game.

The XASECO server controller relies on MySQL (v9+ preferred) to be running. 

## Quick Start

I can't, in good faith, recommend **ANYONE** to run this server, even if you know what you're doing.

### Dedicated Config
If you _really_ want to, you must edit the [dedicated_cfg](/TMServer/GameData/Config/dedicated_cfg.txt) file.
- Add your own name and password for the server
- Edit authorization levels to your desire
- Input account info for server account
- Add server name and description

### Server Config
To play custom tracks, you must first add them to `TMServer/GameData/Tracks/Challenges/Downloaded/` directory. 

To set custom server rules, including game mode and time limit, you must add your own server configuration file in the `TMServer/GameData/Tracks/MatchSettings/` directory.
The format for the server config is as follows:
```
<playlist>
  <gameinfos>
    <game_mode>XXX</game_mode>
    ...
  </gameinfos>

  # Define a track for the server playlist
  <challenge>
    <file>$FILEPATH</file>
  </challenge>
  ...
</playlist>   
```

### Starting the server

I have included a handy startup script that runs the server with the specified custom match settings. If you want to run this server on your own machine, you will have to edit [`start_hunt_server.bat`](/TMServer/start_hunt_server.bat) to point to the path where `TMServer` is located. Additionally, if you created a custom server ruleset, you must edit the path for the `/game_settings=` parameter on line 13. 

Important notes:
- You need 2 TMNF+ accounts: 1 to run the server, and 1 to play on.
- You need a TM validation key to run the server


## Included Plugins
- Greeting Dude
  - Greets players when they join the server
- Dedimania
  - Tracks both local and online records
- JFreu server management suite
  - Server information, beautification
  - Chat commands and chat filters
  - VIP + ban management
