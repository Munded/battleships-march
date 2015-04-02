require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }


class BattleShipsWeb < Sinatra::Base
  get '/' do
    'Hello BattleShipsWeb!'
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/confirmation' do
    @game = Game.new(Player.new("George"), Player.new("Ed"))
    @player_one_name = @game.player_1.name
    @player_two_name = @game.player_2.name
    erb :confirmation
  end

  get '/game' do
    @board = Board.new(cell: Cell, size: 9)
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
