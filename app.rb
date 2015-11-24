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

	get '/faq' do
		erb :faq
	end

	helpers do

		def current_year
			Time.now.year
		end

		def faq(question, answer)
			%(
        <details>
					<summary class="h2">#{question}</summary>
            <div class="well">#{answer}</div>
        </details>
			)
		end

		def icon(icon="arrow-right")
			%(
				<i class="glyphicon glyphicon-#{icon}"></i>
			)
		end

		def fa_icon(icon)
			%(
				<i class="fa fa-#{icon}"></i>
			)
		end

		def top
			%(
				<a href="#"><i class="glyphicon glyphicon-menu-up top" title="back to top"></i></a>
			)
		end

	end
end
