class UsersController < ApplicationController
  
  def index
    @users = User.all
    render :index
  end

  def new
    @user = User.new
    render :new
  end

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)

    login(@user)
    redirect_to "/users/#{@user.id}"
  end


  def show
    @user = User.find(params[:id])
    render :show
  end

   def edit
      id = params[:id]
      @user = User.find(id)
      render :edit
    end

  def update
    user_id = params[:id]
    user = User.find(User_id)

    updated_attributes = params.require(:user).permit(:first_name, :last_name, :email, :password)
    user.update_attributes(updated_attributes)

    redirect_to "/users/#{user_id}"

  end

  def destroy
    id = params[:id]
    user = User.find(id)
    user.destroy
    redirect_to "/users"
  end
  
end
