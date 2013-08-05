Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                    :name => "add_audited_to_admin_order_tabs",
                    :insert_bottom => "[data-hook='admin_order_tabs'], #admin_order_tabs[data-hook]",
                    :partial => "spree/admin/orders/audits_tab",
                    :disabled => false)