require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1, $player2 = Player.new(params[:player1]), Player.new(params[:player2])
    
    redirect '/play'
  end

  get '/play' do
    @player1, @player2 = $player1.name, $player2.name
    @attacker = session[:attacker]
    erb(:play)
  end

  post '/player-2-attacks' do
    session[:attacker] = 'player2'
    redirect '/play'
  end

  run! if app_file == $0
end