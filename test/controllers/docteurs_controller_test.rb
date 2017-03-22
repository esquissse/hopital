require 'test_helper'

class DocteursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @docteur = docteurs(:one)
  end

  test "should get index" do
    get docteurs_url
    assert_response :success
  end

  test "should get new" do
    get new_docteur_url
    assert_response :success
  end

  test "should create docteur" do
    assert_difference('Docteur.count') do
      post docteurs_url, params: { docteur: { adeli: @docteur.adeli, nom_naissance: @docteur.nom_naissance, nom_usage: @docteur.nom_usage, photo: @docteur.photo, prenom_usage: @docteur.prenom_usage, rpps: @docteur.rpps } }
    end

    assert_redirected_to docteur_url(Docteur.last)
  end

  test "should show docteur" do
    get docteur_url(@docteur)
    assert_response :success
  end

  test "should get edit" do
    get edit_docteur_url(@docteur)
    assert_response :success
  end

  test "should update docteur" do
    patch docteur_url(@docteur), params: { docteur: { adeli: @docteur.adeli, nom_naissance: @docteur.nom_naissance, nom_usage: @docteur.nom_usage, photo: @docteur.photo, prenom_usage: @docteur.prenom_usage, rpps: @docteur.rpps } }
    assert_redirected_to docteur_url(@docteur)
  end

  test "should destroy docteur" do
    assert_difference('Docteur.count', -1) do
      delete docteur_url(@docteur)
    end

    assert_redirected_to docteurs_url
  end
end
