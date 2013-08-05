ApplicationController.class_eval do
  alias_method :current_audited_user, :spree_current_user
end