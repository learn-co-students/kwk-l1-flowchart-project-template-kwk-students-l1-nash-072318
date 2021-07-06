class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  get '/life' do
    erb :life
  end

post '/life' do
  @genre = params[:genre]
  @time = params[:time]
  @diet = params[:diet]
  @workout= params[:workout]
  @quote= params[:quote]
  @women= params[:women]
  erb :life

end 

  
 end 




  
  

