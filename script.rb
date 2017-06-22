require 'rubygems'
require 'twilio-ruby'
account_sid = 'ACc417bbeb6fdabb8514441330593b4f7e'
auth_token = '1695ee4f04f06ecd814c8e9eaa17584e'
# set up a client to talk to the Twilio REST API
client = Twilio::REST::Client.new(account_sid, auth_token)
account = client.account
message = account.sms.messages.create({:from => '+16122841188', :to => '+16517074628', :body => 'Testing my API, rowdycash on codecademy :D'})
puts message
