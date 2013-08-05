Spree::Api::BaseController.class_eval do
  alias_method :current_audited_user, :current_api_user
end
