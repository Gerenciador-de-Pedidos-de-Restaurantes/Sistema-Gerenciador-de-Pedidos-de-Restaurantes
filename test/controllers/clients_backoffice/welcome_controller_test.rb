require 'test_helper'

class ClientsBackoffice::WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clients_backoffice_welcome_index_url
    assert_response :success
  end

end
