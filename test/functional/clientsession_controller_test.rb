require 'test_helper'


class ClientsessionControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  
    test "should login" do
      dave = clients(:one)
      post :create, name: dave.name, password: 'secret'
      assert_redirected_to store_url
      assert_equal dave.id, session[:client_id]
  end


  end
