require 'twilio-ruby'

class TwillioWrapper
  def initialize
    account_sid = 'ACc9aeae590db226909906a342d6b98ded'
    auth_token = '47e76fe6ea5787a899941271229bb340'
    @client = Twilio::REST::Client.new(account_sid, auth_token)
  end

  def send_sms(message)
    message = @client.account.sms.messages.create(:body => "Jenny please?! I love you <3",
    :to => "+351913090003",
    :from => "+351308801248")
puts message.from
  end
end