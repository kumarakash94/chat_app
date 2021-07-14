class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def logged_in?
    
  end
    

end
