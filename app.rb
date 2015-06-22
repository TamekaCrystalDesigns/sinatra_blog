require 'sinatra'
require 'sinatra/activerecord'
require './models/user'
require './models/post'
require 'pry'

set :database,"sqlite3:blogapp.sqlite3"


get '/users' do
	@users = User.all
	erb :users
	
end

get '/users/:id' do
	@user = User.find_by_id(params[:id])

	erb :user_detail

end