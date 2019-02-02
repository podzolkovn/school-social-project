class Adapters::OnlyAdmins < ActiveAdmin::AuthorizationAdapter
  def authorized?(action, subject = nil)
    user.is_admin?
  end
end
