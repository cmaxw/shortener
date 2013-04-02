module ApplicationHelper
  def table_header(header_string)
    raw "<th>#{header_string}</th>"
  end

  def link_to_image(image, target)
    link_to image_tag(image), target
  end
end
