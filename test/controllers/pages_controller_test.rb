require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get accueil" do
    get pages_accueil_url
    assert_response :success
  end

  test "should get concept" do
    get pages_concept_url
    assert_response :success
  end

  test "should get activite" do
    get pages_activite_url
    assert_response :success
  end

  test "should get livre_d_or" do
    get pages_livre_d_or_url
    assert_response :success
  end

end
