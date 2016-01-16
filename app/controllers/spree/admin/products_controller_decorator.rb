module Spree
  module Admin
    ProductsController.class_eval do
      def audits
        @product = find_resource
        variants = @product.variants_including_master
        @all_audits = (@product.audits + @product.associated_audits + variants.map(&:audits).flatten + variants.map(&:associated_audits).flatten).sort_by(&:created_at).reverse
      end
    end
  end
end

