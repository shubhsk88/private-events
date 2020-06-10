class UsersController < ApplicationController

    def new
        @user=User.new
    end
    def index
        @users=User.all
    end


    def show
        @user=User.find(params[:id])
    end   

    def create
        @user=User.new(user_params)
        if @user.save
            redirect_to @user,Notice:"Sign Up Successful" 
        else 
            render :new
        end
    end


    private

    def user_params
       params.require(:user).permit(:username,:name,:email,:password)
    end
end
