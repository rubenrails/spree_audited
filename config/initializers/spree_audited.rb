require 'audited-activerecord'

Audited.current_user_method = :current_audited_user

if defined?(Spree::Api::BaseController)
  Spree::Api::BaseController.class_eval do
    around_filter Audited::Sweeper.instance
  end
end