require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra/content_for'

require_relative './lib/service'
require_relative './lib/faq'

class KatieWebsite < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  helpers Sinatra::ContentFor

  # Templates use Slim:
  # http://slim-lang.com/

  get '/' do
    slim :home
  end

  get '/about' do
    slim :about
  end

  get '/contact' do
    slim :contact
  end

  get '/services' do
    @services = Service.all
    slim :services
  end

  get '/faq' do
    @faqs = Faq.all
    slim :faq
  end

  helpers do

    def current_year
      Time.now.year
    end

    def icon(icon="arrow-right")
      %(
        <i class="glyphicon glyphicon-#{icon}"></i>
      )
    end

    def top
      %(
        <a href="#" class="top"><i class="glyphicon glyphicon-menu-up" title="back to top"></i></a>
      )
    end

    def page_title title
      site_title = "Katie M Fritz, LLC"
      return site_title unless title
      "#{title} | #{site_title}"
    end

  end
end
