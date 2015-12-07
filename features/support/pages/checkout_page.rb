class CheckoutPage
  include PageObject

  # without PageObject gem

  # def initialize(browser)
  #   @browser = browser
  # end
  #
  # def name=(name)
  #   @browser.text_field(:id => "order_name").set(name)
  # end
  #
  # def address=(address)
  #   @browser.textarea(:id => "order_address").set(address)
  # end
  #
  # def email=(email)
  #   @browser.text_field(:id => "order_email").set(email)
  # end
  #
  # def pay_type=(pay_type)
  #   @browser.select_list(:id => "order_pay_type").select(pay_type)
  # end
  #
  # def place_order
  #   @browser.button(:value => "Place Order").click
  # end

  # with using PageObject gem
  # if we use PageOjbect gem then we dont need to include initialize method(its included in PageObject gem for us)


  text_field(:name, :id => "order_name")
  textarea(:address, :id => "order_address")
  text_field(:email, :id => "order_email")
  select_list(:pay_type, :id => "order_pay_type")
  button(:place_order, :value => "Place Order")

end