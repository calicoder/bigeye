module ApplicationHelper
  def replacing_content(&block)
    raw("$('#scpz .content').html('#{escape_javascript(capture(&block))}');")
  end

  def serving_js(&block)
    raw(capture(&block))
  end
end
