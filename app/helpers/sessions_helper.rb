module SessionsHelper

  def secure_route
    redirect_to '/sessions/new' unless current_user
  end

  def current_user
    if session[:id]
      User.find_by(id:session[:id])
    end
  end

  def signed_in?
    !!current_user
  end

  def log_in(user)
    session[:id] = user.id
  end

end
