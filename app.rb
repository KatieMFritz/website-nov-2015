require 'sinatra'

class KatieWebsite < Sinatra::Base
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  get '/contact' do
    erb :contact
  end

  get '/services' do
    erb :services
  end

	helpers do

		def current_year
			Time.now.year
		end
		
	end
end
