description 'Server Administrator Help'

ui_page 'html/admin.html'

client_script 'admin_client.lua'
server_script 'admin_server.lua'

files {
    'html/admin.html',
    'html/admin.css',
    'html/admin.js',
}

dependency 'chat'