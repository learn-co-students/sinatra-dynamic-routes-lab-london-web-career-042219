require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @user_name = params[:name] 
    @reversed_name = @user_name.reverse! 
    
    "#{@reversed_name}"

end