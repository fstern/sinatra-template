require 'sinatra'
require 'rack-flash'
require 'logger'

class Application < Sinatra::Base

  use Rack::Flash
  enable :sessions

  set :root, File.dirname(__FILE__)
  set :method_override, true

  get '/' do
    erb :'index'
  end

end
