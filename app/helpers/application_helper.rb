module ApplicationHelper

  # Returns full title
  def full_title(page_title)
    base_title = "Beaker"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Checks if link is the active link
  def active_link(link_path)
    if current_page?(link_path)
      "active"
    end
  end

end
