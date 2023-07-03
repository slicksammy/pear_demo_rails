module PermissionsCheck
  extend ActiveSupport::Concern

  private

  def check_permissions(action_level)
    if current_user.nil? 
      redirect_to(login_path) 
    elsif current_user.permission.permission_level < action_level
      redirect_to(some_specified_path)
    end 
  end 
end
