# frozen_string_literal: true

class CategoryDecorator
  CATEGORY_MAPPINGS = { ios: 'iOS', raspberry: 'Raspberry Pi' }.freeze

  def initialize(category)
    @name = category.name
  end

  def name
    CATEGORY_MAPPINGS.fetch(@name.to_sym) { @name.capitalize }
  end
end
