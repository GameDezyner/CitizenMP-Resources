This script brings basic whitelisting and blacklisting to the server. It also allows for basic "Server Operators" who have the power to kick and ban players from the server.
##Usage
If set up correctly, you can add player names to your whitelist by editing the 'whitelist.txt' file in your server root. To ban users, add them to your 'blacklist.txt' file. To kick a user from the server, press T to open the chat, and type '/kick USERNAME REASON'. You can also ban and unban the same way, however at the time of writing these commands don't save to the files.

Keep in mind that in order to be able to kick or ban people, your username must be in the 'ops.txt' list when the server starts.

##Installation
Extract the admin folder to your server's resources directory. Next replace the files in your existing chat folder with the ones at the link below. Now add a new line in your 'citmp-server.yml' file under Auto Start Resources for 'admin'. Finally, create three new text files in the root of your server directory: 'whitelist.txt', 'blacklist.txt', and 'ops.txt'.

##Dependencies
###Requires a modified version of the chat resource for everything to work
In order for any of the slash commands to work, you must replace the stock chat resource with the one located here [https://github.com/GameDezyner/CitizenMP-Resources/tree/master/%5Bsystem%5D/chat]
