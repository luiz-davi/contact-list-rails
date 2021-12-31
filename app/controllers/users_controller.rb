class UsersController < ApplicationController
    before_action :require_logged_in_user, only: %i[:edit, :update]
    
    def new
        @user = User.new
    end

    def show
    end

    def create
        @user = User.new(user_params)
        if @user.save
            flash[:sucess] = 'Usuário cadastrado com sucesso'
            redirect_to root_path
        else
            render 'new'
        end
    end

    def edit
        
    end

    def update
        if current_user.update(user_params)
            flash[:sucess] = "Usuário atualizado com sucesso"
            redirect_to contacts_path
        else
            render 'edit'
        end
    end

    private 

    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end

end
