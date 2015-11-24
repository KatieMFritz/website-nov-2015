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
			id = question.gsub(/\W/, '')
			%(
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion" href="##{id}">#{question}</a>
						</h3>
				 	</div>
				 	<div id="#{id}" class="panel-collapse collapse in">
						<div class="panel-body">
							#{answer}
						</div>
				 	</div>
				</div>
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
				<a href="#" class="top"><i class="glyphicon glyphicon-menu-up" title="back to top"></i></a>
			)
		end

	end
end
