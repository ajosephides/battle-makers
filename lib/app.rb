require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session["player1"] = params[:player1]
    session["player2"] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session["player1"]
    @player_2 = session["player2"]
    @player1_attack = params[:player1_attack]
    erb(:play)
  end

  get '/attack' do
    @player_1 = session["player1"]
    @player_2 = session["player2"]
    @player1_attack = params[:player1_attack]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end