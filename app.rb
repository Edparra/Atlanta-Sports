require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection.rb'

require_relative 'controllers/teams.rb'
require_relative 'controllers/players.rb'

require_relative 'models/team'
require_relative 'models/player'

get '/' do
	erb :home
end