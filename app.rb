require 'sinatra'

class KatieWebsite < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/test' do
    erb :test
  end
end
