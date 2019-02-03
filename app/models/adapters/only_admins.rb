class Adapters::OnlyAdmins < ActiveAdmin::AuthorizationAdapter
  def authorized?(_action, _subject = nil)
    user.is_admin?
  end
end
