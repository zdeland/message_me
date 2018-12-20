class SessionsController < ApplicationController
    before_action :logged_in_redirect, only: [:new, :create]
    
    def new
        
    end
    
    #login
    def create
       user = User.find_by(username: params[:session][:username]) 
       if user && user.authenticate(params[:session][:password])
           session[:user_id] = user.id
           flash[:success] = "Welcome, "+user.username+"!"
           redirect_to root_path
       else
          flash.now[:error] = "Your login information is incorrect!"
          render 'new' 
       end
    end
    
    #logout
    def destroy
       session[:user_id] = nil 
       flash[:success] = "Goodbye!"
       redirect_to root_path
    end
    
    private
    def logged_in_redirect
        if logged_in?
           flash[:error] = "You are already logged in!"
           redirect_to root_path
        end
    end
    
end