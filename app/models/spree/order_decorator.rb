Spree::Order.class_eval do
  audited except: :currency
  has_associated_audits
end