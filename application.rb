require 'sinatra'
require 'sinatra/activerecord'
require 'rack-flash'

set :database, 'sqlite3:///db/database.sqlite3'

class Application < Sinatra::Base

  use Rack::Flash
  enable :sessions

  set :root, File.dirname(__FILE__)
  set :method_override, true

  get '/' do
    erb :'index'
  end

end
