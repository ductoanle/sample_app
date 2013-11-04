module ApplicationHelper

  def full_title(title)
    base_title = "Ruby on Rails tutorial Sample App"
    unless title.empty?
      base_title + " | #{title}"
    else
      base_title
    end
  end
end
