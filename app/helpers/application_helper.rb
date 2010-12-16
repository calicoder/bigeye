module ApplicationHelper
  def replacing_content(&block)
    raw(serving_js do
      "$('#scpz .content').html('#{escape_javascript(capture(&block))}');"
    end)
  end

  def serving_js(&block)
    raw(aliasing_jquery do
      capture(&block)
    end)
  end

  def aliasing_jquery(&block)
    "(function($){#{capture(&block)}})(SCPZ.$);\n"
  end
end
