class UsersController < ApplicationController
    
    before_action :require_signin,except:[:create,:new]
    
    

    def index
     @users=User.all    
    end

    def new

        @user=User.new
    end

    def create

        @user=User.new(user_params)
        if(@user.save)
            session[:user_id]=@user.id
            redirect_to user_path(@user), notice: "Thanks for signing up!"
        else 
            render :new
        end
    end

    def show
        @user=User.find(params[:id])

    end
    

    def destroy
        session[:user_id]=nil
    end

    private

    def user_params
        params.require(:user).permit(:name,:email,:password)
    end


end
