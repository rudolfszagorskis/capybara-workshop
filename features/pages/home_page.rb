class HomePage < BasePage
    attr_accessor :button_start
  def initialize
    @button_start = Element.new(:id, 'start_button')
  end

  def visible?
    @button_start.visible?
  end

  def load
    visit('/legacy')
  end
end
