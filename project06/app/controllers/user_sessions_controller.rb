class UserSessionsController < ApplicationController
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
      redirect_to @user_session, :notice => "Successfully created user session."
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
    redirect_to user_sessions_url, :notice => "Successfully logged out."
  end
end
