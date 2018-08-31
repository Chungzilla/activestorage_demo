class UsersController < ApplicationController
    def index
        @user = User.all
    end
    
    def new
        @user = User.new

        
    end

    def show
        @user = User.find(params[:id])
    end
        

    def create
        @user = User.create(user_params)
        redirect_to users_path
      end

    end
      
    private
      
      def user_params
        params.require(:user).permit(:title, :description, :image)
      end