module ApplicationHelper

  def markdown_to_html text
    Kramdown::Document.new(text).to_html.html_safe
  end

  def strip_markdown text
    strip_tags(Kramdown::Document.new(text).to_html) #.html_safe
  end
end
