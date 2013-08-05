Spree::Admin::OrdersController.class_eval do
  def audits
    load_order
  end
end
