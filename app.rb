require 'rubygems'
require 'bundler'
require 'debugger'
require 'data_mapper'

Bundler.require

Dir.glob('./lib/*.rb') do |model|
  require model
end

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/stations.db")

module Citibike
	class App < Sinatra::Application
    before do
      json = File.open("data/citibikenyc.json").read
      @data = MultiJson.load(json)
    end

    get '/' do
      
      
      #erb :home
    end

    get '/form' do
      erb :form
    end

    # post '/form' do
    #   debugger
    #   erb :show
    # end

    post '/map' do
      @start = params['start']
      debugger
      @end = params['end']
      erb :map
    end
  end
end