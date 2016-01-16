Deface::Override.new(:virtual_path => "spree/admin/shared/_product_tabs",
                    :name => "add_audited_to_admin_products_tabs",
                    :insert_bottom => "[data-hook='admin_product_tabs'], #admin_product_tabs[data-hook]",
                    :partial => "spree/admin/products/audits_tab",
                    :disabled => false)

