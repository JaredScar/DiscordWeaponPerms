# DiscordWeaponPerms
## Continued Documentation
https://docs.badger.store/fivem-discord-scripts/discordweaponperms
## Discontinued Documentation
**Version 1.0** 

Another discord script of course! With this script, you can restrict weapons to certain roles on your discord server! This script also allows restricting certain attachments to different groups as well (however, it'll remove the weapon if they have the attachment, I'll eventually update it to just remove the attachment from the weapon).

https://i.gyazo.com/52a7106f1db9c309c28ff012b8127ae2.gif

You must set up IllusiveTea's discord_perms script for this to work properly. --> https://forum.fivem.net/t/discord-roles-for-permissions-im-creative-i-know/233805

**How it works**
```
roleList = {
1, -- Trusted Civ (1)
1, -- Donator (2)
1, -- Personal (3)
}
```
responds to it's respective number within the other list:
```
restrictedWeapons = {
{}, -- Trusted Civ (1)
{}, -- Donator (2)
{
"WEAPON_RPG",
}, -- Personal (3)
}
```

The RPG weapon would then be restricted to only people with personal discord role within your discord server. 

It's quite simple :slight_smile:

 
**Installation**
1. Download DiscordWeaponPerms
2. Extract the .zip and place the folder in your /resources/ of your Fivem server
3. Make sure you add “start DiscordWeaponPerms” in your server.cfg
4. Enjoy :slight_smile:

**Download**
[DiscordWeaponPerms](https://github.com/TheWolfBadger/DiscordWeaponPerms)



**My Other Work**

[DiscordChatRoles](https://forum.fivem.net/t/discordchatroles-release/566338)

[DiscordAcePerms](https://forum.fivem.net/t/discordaceperms-release/573044)

[SandyVehiclesRestrict](https://forum.fivem.net/t/release-sandy-vehicles-restrict/564929)

[DiscordTagIDs](https://forum.fivem.net/t/discordtagids-i-know-i-know-i-only-make-discord-based-scripts/582513)

[DiscordVehiclesRestrict](https://forum.fivem.net/t/discordvehiclesrestrict/599594)

[DiscordPedPerms](https://forum.fivem.net/t/release-discordpedperms/642866)

[BadgerAnims](https://forum.fivem.net/t/release-badgeranims/650517)

[DiscordWeaponPerms](https://forum.fivem.net/t/release-discordweaponperms/664774)

**Version 2.0**
- Removing restricted weapon attachments from weapon instead of whole weapon?
