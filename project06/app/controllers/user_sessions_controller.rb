class UserSessionsController < ApplicationController

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy
  
  def index
    @user_sessions = UserSession.all
  end

  def show
    @user_session = UserSession.find(params[:id])
  end

  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to admin_root_url, :notice => "Successfully created user session."
    else
      render :action => 'new'
    end
  end

  def edit
    @user_session = UserSession.find(params[:id])
  end

  def update
    @user_session = UserSession.find(params[:id])
    if @user_session.update_attributes(params[:user_session])
      redirect_to @user_session, :notice  => "Successfully updated user session."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @user_session = UserSession.find
    @user_session.destroy
    redirect_to login_url, :notice => "Successfully logged out."
  end
end
