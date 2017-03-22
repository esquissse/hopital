require 'test_helper'

class TypesActesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_acte = types_actes(:one)
  end

  test "should get index" do
    get types_actes_url
    assert_response :success
  end

  test "should get new" do
    get new_type_acte_url
    assert_response :success
  end

  test "should create type_acte" do
    assert_difference('TypeActe.count') do
      post types_actes_url, params: { type_acte: { cout: @type_acte.cout, libelle: @type_acte.libelle } }
    end

    assert_redirected_to type_acte_url(TypeActe.last)
  end

  test "should show type_acte" do
    get type_acte_url(@type_acte)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_acte_url(@type_acte)
    assert_response :success
  end

  test "should update type_acte" do
    patch type_acte_url(@type_acte), params: { type_acte: { cout: @type_acte.cout, libelle: @type_acte.libelle } }
    assert_redirected_to type_acte_url(@type_acte)
  end

  test "should destroy type_acte" do
    assert_difference('TypeActe.count', -1) do
      delete type_acte_url(@type_acte)
    end

    assert_redirected_to types_actes_url
  end
end
