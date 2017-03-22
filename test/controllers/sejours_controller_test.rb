require 'test_helper'

class SejoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sejour = sejours(:one)
  end

  test "should get index" do
    get sejours_url
    assert_response :success
  end

  test "should get new" do
    get new_sejour_url
    assert_response :success
  end

  test "should create sejour" do
    assert_difference('Sejour.count') do
      post sejours_url, params: { sejour: { date_debut: @sejour.date_debut, date_fin: @sejour.date_fin, patient_id: @sejour.patient_id } }
    end

    assert_redirected_to sejour_url(Sejour.last)
  end

  test "should show sejour" do
    get sejour_url(@sejour)
    assert_response :success
  end

  test "should get edit" do
    get edit_sejour_url(@sejour)
    assert_response :success
  end

  test "should update sejour" do
    patch sejour_url(@sejour), params: { sejour: { date_debut: @sejour.date_debut, date_fin: @sejour.date_fin, patient_id: @sejour.patient_id } }
    assert_redirected_to sejour_url(@sejour)
  end

  test "should destroy sejour" do
    assert_difference('Sejour.count', -1) do
      delete sejour_url(@sejour)
    end

    assert_redirected_to sejours_url
  end
end
