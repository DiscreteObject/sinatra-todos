$LOAD_PATH.unshift(File.expand_path('.'))

require 'sinatra'
require 'sinatra/activerecord'

require 'models/todo'


# This loads environment variables from the .env file
require 'dotenv'
Dotenv.load

set :database, ENV['DATABASE_URL']

get '/' do
  @todos = Todo.all
  erb :index
end

post '/todos' do
  # params.to_s
  Todo.create('todo_name' => params[:todo_name])
end

get '/todos' do
  @todos = Todo.all
  erb :index
end