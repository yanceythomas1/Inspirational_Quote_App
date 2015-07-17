require 'bundler'
Bundler.require
require_relative "models/model.rb"
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/sports' do
    erb :sports
  end
  post '/quote' do
    puts params
    @quote1 = Quote.new(params["category"],params["answer"])
    puts @quote1 
    puts @quote1.category
    puts @quote1.answer
    erb :quote
  end
  get '/family' do 
    erb :family
  end 
  get '/school' do
    erb :school
  end 
  get '/rerelationships'
    erb :relationships
  end 
  end 
end