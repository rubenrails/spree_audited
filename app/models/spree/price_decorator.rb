Spree::Price.class_eval do
  audited associated_with: :variant
end
