require 'sinatra'
require_relative './player.rb'
require_relative './game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player1.name
    @player_2 = $player2.name
    @player_1_hit_points = $player1.hit_points
    @player_2_hit_points = $player2.hit_points
    @player1_attack = session[:player1_attack]
    erb(:play)
  end

  get '/attack' do
    session[:player1_attack] = params[:player1_attack]
    Game.new.attack($player2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end