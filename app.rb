require 'sinatra'

class KatieWebsite < Sinatra::Base
  get '/' do
    erb :home
  end

end
