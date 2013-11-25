class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def missing_email
    @customers_missing = Customer.where("email_address is  NULL or email_address = ''")
  end
end
