Spree::Adjustment.class_eval do
  audited :associated_with => :adjustable
end