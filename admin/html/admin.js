$(function() {
	$('#kickMessage').hide();
	
	window.addEventListener('message', function(event) {
        event.data;

        if (event.data.message && event.data.message == 'kickPlayer') {
            if (event.data.reason == "notwhitelisted") {
                $('#kickMessage').show();
                $('#kickMessageText').html('<span style="color:red;">Access Denied.</span> You are not on the whitelist.');
            }
            if (event.data.reason == "blacklisted") {
                $('#kickMessage').show();
                $('#kickMessageText').html('<span style="color:red;">Access Denied.</span> You are banned from this server.');
            }
            if (event.data.reason == "kicked") {
                $('#kickMessage').show();
                $('#kickMessageText').html('<span style="color:red;">You Were Kicked.</span> '+event.data.explanation);
            }
        }
    }, false);
});