require 'sinatra'
require 'rack-flash'

class Application < Sinatra::Base

  use Rack::Flash
  enable :sessions

  set :root, File.dirname(__FILE__)
  set :method_override, true
  set :database, 'sqlite3:///db/database.sqlite3'

  get '/' do
    erb :'index'
  end

end
