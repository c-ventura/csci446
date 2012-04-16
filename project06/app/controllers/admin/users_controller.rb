class Admin::UsersController < Admin::AdminController #ApplicationController
	
  def new
	@user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
	  flash[:notice] = "Registration successful."
      redirect_to admin_user_url, :notice => "Successfully created user." #root_url
    else
      render :action => 'new'
    end
  end

  def index
    @user = current_user
  end
  
  def show
    @user = current_user
  end
  
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to root_url, :notice  => "Successfully updated user."
    else
      render :action => 'edit'
    end
  end


end
