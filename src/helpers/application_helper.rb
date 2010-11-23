module ApplicationHelper
  
  def page_title
    full_page_title.join(" - ")
  end
  
  def full_page_title
    page_title = [@site_name ||= "Bootstrap"]
    page_title << @page_title
  end
end