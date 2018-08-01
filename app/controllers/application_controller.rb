class ApplicationController < Sinatra::Base

 configure do
   set :public_folder, 'public'
   set :views, 'app/views'
 end

 get '/' do
   erb :index
 end
 
# get '/result' do
#   erb :result.rb 
#   end 
 
 post '/results' do
   @length = params[:length].to_i
   @topic = params[:topic].to_i
  # @response = Result.new(params[:username], params[:length].to_i, params[:topic].to_i)
  # @response.results
  # "Your article is #{@response.results}."
   if @length + @topic <= 4
  erb :short_environment
elsif @length + @topic <= 7
  erb :med_environment
  # @article = "med_enviorment"
elsif @length + @topic <= 10
  erb :feelgood_short
  # @article = "feelgood_short"
 elsif @length + @topic <= 12
  erb :short_womenintech
  # @article = "short_womenintech"
  elsif @length + @topic <= 14
  erb :feelgood_med
  # @article = "feelgood_med"
  elsif @length + @topic <= 15
  erb :long_environment
  # @article = "long_environment"
  elsif @length + @topic <= 16
  erb :med_womenintech
  # @article = "med_womenintech"
  elsif @length + @topic <= 22
  erb :feelgood_long
  # @article = "feelgood_long"
  else @length + @topic <= 24
  erb :long_womenintech
   # @article = "long_womenintech"
  end
 
 end
 end