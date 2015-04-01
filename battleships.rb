require 'sinatra/base'

require './lib/board.rb'


class BattleShipsWeb < Sinatra::Base
  get '/' do
    'Hello BattleShipsWeb!'
    erb :index
  end

  get '/name' do
    erb :name
  end

  post '/confirmation' do
    erb :confirmation
  end

  get '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
