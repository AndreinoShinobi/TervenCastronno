class SessionsController < ApplicationController

  def new
    if logged_in?
      redirect_to events_path
    end
  end

  def create
    admin = Admin.find_by(name: params[:session][:name])
    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      redirect_to events_path
    else
      flash.now[:danger] = 'Credenziali Errate!'
      render 'new'
    end  end

  def destroy
    log_out
    redirect_to home_path
  end
end
