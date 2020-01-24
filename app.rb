require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
  
  get '/' do
    erb :user_input 
  end
  
  post '/' do
    pgl = PigLatinizer.new
    @piglatin = pgl.piglatinize(params[:user_input])
  end
end