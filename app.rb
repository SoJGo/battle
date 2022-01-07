require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1], session[:player2] = params[:player1], params[:player2]
    
    redirect '/play'
  end

  get '/play' do
    @player1, @player2 = session[:player1], session[:player2]
    @attacker = session[:attacker]
    erb(:play)
  end

  post '/player-2-attacks' do
    session[:attacker] = 'player2'
    redirect '/play'
  end

  run! if app_file == $0
end