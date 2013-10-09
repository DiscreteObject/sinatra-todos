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

post '/' do
  Todo.create(name: params['name'] )
  redirect to('/')
end

post '/complete/:id/' do
  p Todo.find(params[:id])
  done = Todo.find(params[:id])
  done.completed = true
  done.save
  p done
  redirect to ('/')
end