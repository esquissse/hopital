require 'test_helper'

class TypesDonneesVitalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_donnee_vitale = types_donnees_vitales(:one)
  end

  test "should get index" do
    get types_donnees_vitales_url
    assert_response :success
  end

  test "should get new" do
    get new_type_donnee_vitale_url
    assert_response :success
  end

  test "should create type_donnee_vitale" do
    assert_difference('TypeDonneeVitale.count') do
      post types_donnees_vitales_url, params: { type_donnee_vitale: { libelle: @type_donnee_vitale.libelle, unite: @type_donnee_vitale.unite } }
    end

    assert_redirected_to type_donnee_vitale_url(TypeDonneeVitale.last)
  end

  test "should show type_donnee_vitale" do
    get type_donnee_vitale_url(@type_donnee_vitale)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_donnee_vitale_url(@type_donnee_vitale)
    assert_response :success
  end

  test "should update type_donnee_vitale" do
    patch type_donnee_vitale_url(@type_donnee_vitale), params: { type_donnee_vitale: { libelle: @type_donnee_vitale.libelle, unite: @type_donnee_vitale.unite } }
    assert_redirected_to type_donnee_vitale_url(@type_donnee_vitale)
  end

  test "should destroy type_donnee_vitale" do
    assert_difference('TypeDonneeVitale.count', -1) do
      delete type_donnee_vitale_url(@type_donnee_vitale)
    end

    assert_redirected_to types_donnees_vitales_url
  end
end
