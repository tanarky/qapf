module ApplicationHelper
  def show_glyphicon(name = nil)
    content_tag(:span, '', class:"glyphicon glyphicon-#{name}")
  end

  def category_tree_view(h, t, start, depth)
    if depth < 1 or t[start] == nil
      return ''
    end

    # FIXME: use content_tag
    html = '<ul>'
    t[start].each do |i|
      key = "#{start}/#{i}"
      html += '<li>'
      html += '<a href="' + category_path(i) + '">'
      html += h[i]['name'].html_safe
      html += '</a>'
      html += category_tree_view(h, t, key, depth - 1)
      html += '</li>'
    end
    html += '</ul>'
    html
  end

end
