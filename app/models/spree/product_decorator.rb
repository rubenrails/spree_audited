Spree::Product.class_eval do
  audited except: :preferences
  has_associated_audits
end
