# pacific-atoll-5967 - LIVE
# powerful-fjord-6331 -

env = ENV["RACK_ENV"] || "development"

require 'sinatra'
require 'data_mapper'
require 'rack-protection'

get '/' do
	"Hello World"
end