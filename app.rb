require 'vendor/gems/environment'
require 'sinatra'
require 'haml'
require 'lib/sinatra/rdiscount'
require 'active_support'

class App < Sinatra::Default

  get '/' do
    @article = :"posts/welcome"
    haml :index
  end
  
  get '/:page' do |article|
    @article = :"posts/#{article}"
    haml :index
  end
  
  get 'drafts/:page' do |article|
    @article = :"drafts/#{article}"
    haml :index
  end
  

end
