Spree::Shipment.class_eval do
  audited :associated_with => :order
end
