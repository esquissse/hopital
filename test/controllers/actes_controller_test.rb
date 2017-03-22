require 'test_helper'

class ActesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acte = actes(:one)
  end

  test "should get index" do
    get actes_url
    assert_response :success
  end

  test "should get new" do
    get new_acte_url
    assert_response :success
  end

  test "should create acte" do
    assert_difference('Acte.count') do
      post actes_url, params: { acte: { date_heure: @acte.date_heure, type_acte_id: @acte.type_acte_id } }
    end

    assert_redirected_to acte_url(Acte.last)
  end

  test "should show acte" do
    get acte_url(@acte)
    assert_response :success
  end

  test "should get edit" do
    get edit_acte_url(@acte)
    assert_response :success
  end

  test "should update acte" do
    patch acte_url(@acte), params: { acte: { date_heure: @acte.date_heure, type_acte_id: @acte.type_acte_id } }
    assert_redirected_to acte_url(@acte)
  end

  test "should destroy acte" do
    assert_difference('Acte.count', -1) do
      delete acte_url(@acte)
    end

    assert_redirected_to actes_url
  end
end
