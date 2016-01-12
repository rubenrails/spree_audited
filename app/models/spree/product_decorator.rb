Spree::Product.class_eval do
  audited
  has_associated_audits
end
