# require 'bundler'
Bundler.require

require "./models/results.rb"

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/form' do
    erb :form
  end
  
  post '/results' do 
    
    @suggestion = caffine_suggestor(params[:tolerance], params[:day], params[:hours].to_f)
    
    erb :results
    
   
      
  end
  


end