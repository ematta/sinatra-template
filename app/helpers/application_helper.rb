# frozen_string_literal: true

# desc
module ApplicationHelper
  def title(value = nil)
    @title = value if value
    @title ? "Controller Demo - #{@title}" : 'Controller Demo'
  end
end
