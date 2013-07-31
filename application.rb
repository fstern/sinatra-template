require 'sinatra'

class Application < Sinatra::Base

  get '/' do
    'Welcome!'
  end

end
