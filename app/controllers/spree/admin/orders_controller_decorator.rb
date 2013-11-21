Spree::Admin::OrdersController.class_eval do
  def audits
    load_order
    @all_audits = (@order.audits + @order.associated_audits + @order.comments).flatten.sort_by(&:created_at).reverse
  end
end
