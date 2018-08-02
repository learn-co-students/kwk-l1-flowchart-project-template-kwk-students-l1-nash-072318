class ApplicationController < Sinatra::Base

configure do
 set :public_folder, 'public'
 set :views, 'app/views'
end

get '/' do
 erb :index
end

get '/about' do
  erb :about
end

get '/kode' do
  erb :kode
end
 
get '/quizzz' do
  erb :quizzz
end

get '/index' do
  erb :index
end

# get '/result' do
#   erb :result.rb
#   end

post '/results' do
 @length = params[:length].to_i
 @topic = params[:topic].to_i
 @username = params[:username]
# @response = Result.new(params[:username], params[:length].to_i, params[:topic].to_i)
# @response.results
# "Your article is #{@response.results}."
 if @length + @topic <= 4
erb :short_envior
elsif @length + @topic <= 7
erb :med_envior
elsif @length + @topic <= 10
 erb :short_feelgood
elsif @length + @topic <= 12
erb :short_womenintech
elsif @length + @topic <= 14
erb :med_feelgood
elsif @length + @topic <= 15
erb :long_envior
elsif @length + @topic <= 16
erb :med_womenintech
elsif @length + @topic <= 22
erb :long_feelgood
else @length + @topic <= 24
erb :long_womenintech
end

end
end
  