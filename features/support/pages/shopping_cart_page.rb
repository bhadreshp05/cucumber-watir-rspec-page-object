class ShoppingCartPage
  include PageObject

  # Constant value - should not be changed once defined
  NAME_COLUMN = 1
  SUBTOTAL_COLUMN = 3
  LINES_PER_PUPPY = 6

  button(:proceed_to_checkout, :value => "Complete the Adoption")
  button(:continue_shopping, :value => "Adopt Another Puppy")
  table(:cart, :index => 0)
  cell(:cart_total, :class => "total_cell")

  # def cart_total
  #   @browser.td(:class => 'total_cell').text
  # end

  # def proceed_to_checkout
  #   @browser.button(:value => 'Complete the Adoption').click
  # end

  # def continue_shopping
  #   @browser.button(:value => 'Adopt Another Puppy').click
  # end

  def name_for_line_item(line_item)
    table_value(line_item, NAME_COLUMN)
  end

  def subtotal_for_line_item(line_item)
    table_value(line_item, SUBTOTAL_COLUMN)
  end

  # Below methods are private and could not be called outside of this class
  private

  def table_value(lineitem, column)
    row = (lineitem.to_i - 1) * LINES_PER_PUPPY
    cart_element[row][column].text
  end

end