local configuration = {
	["whitelisted_names"] = {},
    ["blacklisted_names"] = {},
    ["server_ops"] = {},
    ["whitelistmode"] = true
}
local whitelistConfig = 'whitelist.txt'
local blacklistConfig = 'blacklist.txt'
local serverOps = 'ops.txt'

AddEventHandler('onResourceStarting', function(resource)
	refreshLists()
end)
function isUserWhitelisted(name)
    isWhitelisted = false
    for key, value in ipairs(configuration["whitelisted_names"]) do
		if string.lower(configuration["whitelisted_names"][key]) == string.lower(name) then
			isWhitelisted = true;
			break;
		end
	end
    return isWhitelisted
end
function isUserBlacklisted(name)
    isBlacklisted = false
    for key, value in ipairs(configuration["blacklisted_names"]) do
		if string.lower(configuration["blacklisted_names"][key]) == string.lower(name) then
			isBlacklisted = true;
			break;
		end
	end
    return isBlacklisted
end
function isUserOp(name)
    isOp = false
    for key, value in ipairs(configuration["server_ops"]) do
		if string.lower(configuration["server_ops"][key]) == string.lower(name) then
			isOp = true;
			break;
		end
	end
    return isOp
end

RegisterServerEvent('playerCheck')
AddEventHandler('playerCheck', function()
    local isWhitelisted = false
    local isBlacklisted = false
    local isServerOp = false
	local name = GetPlayerName(source)
    data = {
        whitelisted = false,
        blacklisted = false,
        serverop = false,
        serverwhitelisted = configuration["whitelistmode"]
    }
    isWhitelisted = isUserWhitelisted(name)
	isBlacklisted = isUserBlacklisted(name)
	isServerOp = isUserOp(name)

    print('Player ' .. name .. ' connecting with playerId ' .. source)
    if isBlacklisted then
        data.blacklisted = true
        print( name .. ' is BLACKLISTED ')
    end
    if isWhitelisted then
        data.whitelisted = true
        print( name .. ' is WHITELISTED ')
    end
    if isServerOp then
        data.isserverop = true
        print( name .. ' is an OP ')
    end
    TriggerClientEvent('playerCheck', source, data)
end)

function refreshLists() 
    print("Refreshing lists...")
    --Refresh the Whitelist
	for key, value in ipairs(configuration["whitelisted_names"]) do 
		configuration["whitelisted_names"][key] = nil 
	end
	local file = io.open(whitelistConfig, "rb")
  	if file then 
		for line in io.lines(whitelistConfig) do 
			-- Populate the whitelist table with contents from the textfile
			table.insert(configuration["whitelisted_names"], line)
  		end	
  		file:close() 
	else
		print("Error: can not locate whitelist.txt")
	end
	print("Found " .. #configuration["whitelisted_names"] .. " whitelisted entries")
    --Refresh the Blacklist
	-- Clear the blacklist table
	for key, value in ipairs(configuration["blacklisted_names"]) do 
		configuration["blacklisted_names"][key] = nil 
	end
	local file = io.open(blacklistConfig, "rb")
  	if file then 
		for line in io.lines(blacklistConfig) do 
			-- Populate the blacklist table with contents from the textfile
			table.insert(configuration["blacklisted_names"], line)
  		end	
  		file:close() 
	else
		print("Error: can not locate blacklist.txt")
	end
	print("Found " .. #configuration["blacklisted_names"] .. " blacklisted entries")
    --Refresh Server Operators
	-- Clear the ops table
	for key, value in ipairs(configuration["server_ops"]) do 
		configuration["server_ops"][key] = nil 
	end
	local file = io.open(serverOps, "rb")
  	if file then 
		for line in io.lines(serverOps) do 
			-- Populate the ops table with contents from the textfile
			table.insert(configuration["server_ops"], line)
  		end	
  		file:close() 
	else
		print("Error: can not locate ops.txt")
	end
	print("Found " .. #configuration["server_ops"] .. " op user entries")
    --Declare whitelist mode
    if configuration["whitelistmode"] then
        print("Server is currently whitelisted")
    else
        print("Server is not currently whitelisted")
    end    
end
function stringSplit(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                t[i] = str
                i = i + 1
        end
        return t
end
AddEventHandler('slashCommand', function(source, name, message)
    command = message:sub(2, string.len(message))
    if stringSplit(command," ")[1] == "kick" then
        if isUserOp(name) then
            TriggerClientEvent('kickPlayer', -1, stringSplit(command," ")[2], stringSplit(command," ")[3])
            TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, stringSplit(command," ")[2] .. ' has been kicked from the server.')
        else
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'You are not allowed to kick people!')
        end
    end
    if stringSplit(command," ")[1] == "ban" then
        if isUserOp(name) then
            table.insert(configuration["blacklisted_names"], string.lower(stringSplit(command," ")[2]))
            TriggerClientEvent('banPlayer', -1, stringSplit(command," ")[2], stringSplit(command," ")[3])
            TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, stringSplit(command," ")[2] .. ' has been banned from the server.')
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'Don\'t forget to add it to your blacklist.txt file!')
        else
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'You are not allowed to ban people!')
        end
    end
    if stringSplit(command," ")[1] == "unban" then
        if isUserOp(name) then
            table.remove(configuration["blacklisted_names"], string.lower(stringSplit(command," ")[2]))
            TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, stringSplit(command," ")[2] .. ' has been unbanned from the server.')
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'Don\'t forget to remove it from your blacklist.txt file!')
        else
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'You are not allowed to unban people!')
        end
    end
    --Doesn't work quite right just yet
    --[[
    if stringSplit(command," ")[1] == "op" then
        if isUserOp(name) then
            table.insert(configuration["server_ops"], string.lower(stringSplit(command," ")[2]))
            TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, stringSplit(command," ")[2] .. ' is now a Server Operator.')
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'Don\'t forget to add it to your ops.txt file!')
        else
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'You are not allowed to op people!')
        end
    end
    if stringSplit(command," ")[1] == "deop" then
        if isUserOp(name) then
            table.remove(configuration["server_ops"], string.lower(stringSplit(command," ")[2]))
            TriggerClientEvent('chatMessage', -1, '', { 0, 0, 0 }, stringSplit(command," ")[2] .. ' is no longer a Server Operator.')
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'Don\'t forget to remove it from your ops.txt file!')
        else
            TriggerClientEvent('chatMessage', source, '', { 0, 0, 0 }, 'You are not allowed to deop people!')
        end
    end
    ]]--
end)