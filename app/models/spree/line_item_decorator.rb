Spree::LineItem.class_eval do
  audited :associated_with => :order, except: [:currency, :order_id]
end