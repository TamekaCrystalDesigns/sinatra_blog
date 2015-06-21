require 'sinatra'
require 'sinatra/activerecord'
require './models/user'

set :database,"sqlite3:blogapp.sqlite3"