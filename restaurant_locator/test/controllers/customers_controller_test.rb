require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
 test "user can log in" do
  get new
  get root_path

 end
end