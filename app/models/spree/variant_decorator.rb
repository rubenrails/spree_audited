Spree::Variant.class_eval do
  audited associated_with: :product
  has_associated_audits
end
