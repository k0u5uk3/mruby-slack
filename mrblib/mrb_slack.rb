class Slack

   def initialize(webhook)
      @webhook = webhook
   end

   def notify(channel, name, message)
      hash = {
         "channel" => channel,
         "username" => name,
         "text" => message,
      }

      json = JSON::stringify(hash)
      urlenc = HTTP::URL::encode(json)
      res = HttpRequest.new.post @webhook, "payload=" + urlenc, { "Content-Type" => "application/x-www-form-urlencoded"}
   end
end
