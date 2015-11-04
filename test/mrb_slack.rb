##
## Slack Test
##

assert("Slack#hello") do
  t = Slack.new "hello"
  assert_equal("hello", t.hello)
end

assert("Slack#bye") do
  t = Slack.new "hello"
  assert_equal("hello bye", t.bye)
end

assert("Slack.hi") do
  assert_equal("hi!!", Slack.hi)
end
