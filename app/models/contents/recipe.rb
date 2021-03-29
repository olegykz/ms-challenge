# frozen_string_literal: true

class Contents::Recipe < ContentfulModel::Base
  self.content_type_id = 'recipe'

  def html_description
    @html_description ||= markdown.render(description)
  end

  private

  def markdown
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML)
  end
end
