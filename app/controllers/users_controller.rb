class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(params_user)
    if @user.save
      redirect_to root_path
        flash[:notice] = "Novo usuário criado com sucesso!"
    else
      render :new 
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  
  
  
  private
  
  def params_user
    params.require(:user).permit(:rua,:email,:password,:password_confirmation,:bairro,:numero,:complemento,:cidade, :nome, :foto)   
  end
 
 
end
