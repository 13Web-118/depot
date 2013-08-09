require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @input_attributes = {
      name: 'ttt',
      password: 'ttt',
      password_confirmation: 'ttt'
    }
    
    @client=clients(:noe)
  end



end
