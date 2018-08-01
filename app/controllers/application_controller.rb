class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views' 
  end 
  
    get '/charity_quiz' do
    erb :charity_quiz
  end

post '/charity' do
  @name = params[:username]
  @name = params[:question]
  "A charity that best suits your preferences is #{charity}"
  end
  
end
