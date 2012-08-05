module ApplicationHelper
	
	def title(page_title=nil, show_title = true)
    content_for(:title) { h('Olivia Ifergan - '+page_title.to_s) } unless page_title.nil?
  end
end
