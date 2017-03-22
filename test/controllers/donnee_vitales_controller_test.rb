require 'test_helper'

class DonneeVitalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @donnee_vitale = donnees_vitales(:one)
  end

  test "should get index" do
    get donnees_vitales_url
    assert_response :success
  end

  test "should get new" do
    get new_donnee_vitale_url
    assert_response :success
  end

  test "should create donnee_vitale" do
    assert_difference('DonneeVitale.count') do
      post donnees_vitales_url, params: { donnee_vitale: { date: @donnee_vitale.date, patient_id: @donnee_vitale.patient_id, valeur: @donnee_vitale.valeur } }
    end

    assert_redirected_to donnee_vitale_url(DonneeVitale.last)
  end

  test "should show donnee_vitale" do
    get donnee_vitale_url(@donnee_vitale)
    assert_response :success
  end

  test "should get edit" do
    get edit_donnee_vitale_url(@donnee_vitale)
    assert_response :success
  end

  test "should update donnee_vitale" do
    patch donnee_vitale_url(@donnee_vitale), params: { donnee_vitale: { date: @donnee_vitale.date, patient_id: @donnee_vitale.patient_id, valeur: @donnee_vitale.valeur } }
    assert_redirected_to donnee_vitale_url(@donnee_vitale)
  end

  test "should destroy donnee_vitale" do
    assert_difference('DonneeVitale.count', -1) do
      delete donnee_vitale_url(@donnee_vitale)
    end

    assert_redirected_to donnees_vitales_url
  end
end
