
module Spree
  module Admin
    OrdersHelper.module_eval do
      def audit_badge(audit)
        initials = audit.auditable_type.demodulize.gsub(/([a-z\d])([A-Z])/,'\1 \2').split.map(&:first).join
        content_tag :div, :class => "audit_badge #{initials.downcase}" do
          initials
        end
      end

      def collapsed_comment(audit)
        return unless audit.comment.present?
        content_tag :span, :class => :collapsed_comment, :title => audit.comment do
          image_tag "http://www2.psd100.com/ppp/2013/10/0501/Comment-bubble-icon-1005100027.png", :align => :absmiddle
        end
      end

      def short_name(user)
        return unless user && user.email
        user.email.split("@")[0]
      end
    end
  end
end