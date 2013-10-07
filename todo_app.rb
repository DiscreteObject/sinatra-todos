require 'sinatra'
require 'sinatra/activerecord'

$LOAD_PATH.unshift(File.expand_path('.'))


# This loads environment variables from the .env file
require 'dotenv'
Dotenv.load

set :database, ENV['DATABASE_URL']

get '/' do
  erb :index
end
