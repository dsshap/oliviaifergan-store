module LayoutHelper
	def link_to_shopping_cart
		return "" if current_spree_page?(cart_path)


      if current_order.nil? or current_order.line_items.empty?
        text = "Cart: (0)"
				css_class = 'empty'
      else
        text = "Cart: (#{current_order.item_count})  <span class='amount'>#{order_subtotal(current_order)}</span>".html_safe
				css_class = 'full'
      end

      link_to text, cart_path, :class => css_class
	end
	def olivia_title(page_title=nil, show_title = true)
    content_for(:title) { h(page_title.to_s + ' - Olivia Ifergan') } unless page_title.nil?
  end

  def stylesheet(*args)
    content_for(:stylesheets) { stylesheet_link_tag(*args) }
  end

  def javascript(*args)
    content_for(:javascript) { javascript_include_tag(*args) }
  end
end
