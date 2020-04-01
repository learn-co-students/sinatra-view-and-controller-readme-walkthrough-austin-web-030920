require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
  @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    @friends = ['Rando #1', 'Rando #2', 'Rando #3', "Malala Yousafzai"]
    erb :friends
  end
end