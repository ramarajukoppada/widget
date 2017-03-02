module FullHelper
  
  def is_admin? 
    current_user && current_user.is_admin == "true"

  end

end