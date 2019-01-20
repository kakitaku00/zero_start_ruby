# 10-2
# require "sinatra"
# get "/omikuzi" do
#   ["大吉", "中吉", "末吉", "凶"].sample
# end

# 10-3
require "net/http"
require "uri"
require "cgi"
uri = URI.parse("http://localhost:4567/hi")
# puts Net::HTTP.get(uri)

uri2 = URI.parse("http://localhost:4567/drink")
p CGI.unescape(Net::HTTP.get(uri2))