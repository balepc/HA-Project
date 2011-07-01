class SessionsController < ApplicationController

  def set
    session[:aaa] = 'bbb'
    render :text => 'Session was set'
  end

  def get
    render :text => session[:aaa]
  end

  def reset
    reset_session
    render :text => "Session was reset"
  end
end
