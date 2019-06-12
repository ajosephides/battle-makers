require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = params[:player1]
    player_2 = params[:player2]
    "Player 1: #{player_1}, Player 2: #{player_2}"

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end