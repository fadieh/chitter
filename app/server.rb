# pacific-atoll-5967 - LIVE
# powerful-fjord-6331 - STAGING

env = ENV["RACK_ENV"] || "development"

require 'sinatra'
require 'data_mapper'
require 'rack-protection'

ENV["RACK_ENV"] == "production" ? DataMapper.setup(:default, ENV["DATABASE_URL"]) : DataMapper.setup(:default, "postgres://localhost/chitter_#{env}")

DataMapper.finalize # collect all models and work out what db is shaped like
DataMapper.auto_upgrade! # will change db structure, if table exists do this if not then create this.

get '/' do
	"Hello World"
end