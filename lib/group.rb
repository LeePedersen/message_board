require 'net/http'
require 'googleauth'
require "uri"

class Group

  def self.get_api_response(url)
    uri = URI(url)
    req = Net::HTTP::Get.new(uri)
    req["Authorization"] = 'eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE1ODA0OTUzMTZ9.5tU-80b5YrYfsyHxO3ZkBKbcxpwVEr5OgXzSdaVFqUU'
    response = Net::HTTP.start(uri.hostname, uri.port) {|http|
      http.request(req)
    }
    JSON.parse(response.body)
  end

end
