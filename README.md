# mruby-slack   [![Build Status](https://travis-ci.org/k0u5uk3/mruby-slack.png?branch=master)](https://travis-ci.org/k0u5uk3/mruby-slack)
Slack class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

    # ... (snip) ...

    conf.gem :github => 'k0u5uk3/mruby-slack'
end
```

## example

```ruby
> slack = Slack.new('https://hooks.slack.com/services/XXXXX/XXXXX/XXXXX')
 => #<Slack:0x7ffdc482c160 @webhook="https://hooks.slack.com/services/XXXXX/XXXXX/XXXXX">
> slakc.notify('#3l33t', 'k0u5uk3', 'Hello World!!')
(mirb):2: undefined method 'slakc' for main (NoMethodError)
> slack.notify('#3l33t', 'k0u5uk3', 'Hello World!!')
 => #<SimpleHttp::SimpleHttpResponse:0x7ffdc480f810 @response={"header"=>"HTTP/1.1 200 OK\r\nAccess-Control-Allow-Origin: *\r\nContent-Security-Policy: referrer no-referrer;\r\nContent-Type: text/html\r\nDate: Wed, 04 Nov 2015 08:49:05 GMT\r\nServer: Apache\r\nStrict-Transport-Security: max-age=31536000; includeSubDomains; preload\r\nX-Frame-Options: SAMEORIGIN\r\nContent-Length: 2\r\nConnection: Close", "body"=>"ok", "status"=>"200 OK", "code"=>200, "access-control-allow-origin"=>"*", "content-security-policy"=>"referrer no-referrer;", "content-type"=>"text/html", "date"=>"Wed, 04 Nov 2015 08:49:05 GMT", "server"=>"Apache", "strict-transport-security"=>"max-age=31536000; includeSubDomains; preload", "x-frame-options"=>"SAMEORIGIN", "content-length"=>"2", "connection"=>"Close"}, @headers={"access-control-allow-origin"=>"*", "content-security-policy"=>"referrer no-referrer;", "content-type"=>"text/html", "date"=>"Wed, 04 Nov 2015 08:49:05 GMT", "server"=>"Apache", "strict-transport-security"=>"max-age=31536000; includeSubDomains; preload", "x-frame-options"=>"SAMEORIGIN", "content-length"=>"2", "connection"=>"Close"}>
```

## License
under the MIT License:
- see LICENSE file
