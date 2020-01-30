require('sinatra')
require('sinatra/reloader')
require('pry')
require './lib/group'
also_reload('lib/**/*.rb')
require 'net/http'

get('/') do
  @groups = Group.get_api_response('http://localhost:3000/groups')
  erb(:index)
end
