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
  #@name = params[:question2]
  #@name = params[:question3]
  
  end
  
end
