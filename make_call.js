var accountSid = 'ACc417bbeb6fdabb8514441330593b4f7e';
var authToken = "1695ee4f04f06ecd814c8e9eaa17584e";
var client = require('twilio')(accountSid, authToken);

client.calls.create({
    url: "http://demo.twilio.com/docs/voice.xml",
    to: "+16517074628",
    from: "+16513144437"

}, function(err, call) {
    process.stdout.write(call.sid);
});
