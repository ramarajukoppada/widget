module ApplicationHelper
  
def div(id)

 @wd = id
 @widgets = Widget.where(div_id: @wd)
  
end

  
  def resource_name
    :user
  end
 
  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

end
