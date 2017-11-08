require 'test_helper'

class EtiquetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etiquetum = etiqueta(:one)
  end

  test "should get index" do
    get etiqueta_url
    assert_response :success
  end

  test "should get new" do
    get new_etiquetum_url
    assert_response :success
  end

  test "should create etiquetum" do
    assert_difference('Etiquetum.count') do
      post etiqueta_url, params: { etiquetum: { nombre: @etiquetum.nombre } }
    end

    assert_redirected_to etiquetum_url(Etiquetum.last)
  end

  test "should show etiquetum" do
    get etiquetum_url(@etiquetum)
    assert_response :success
  end

  test "should get edit" do
    get edit_etiquetum_url(@etiquetum)
    assert_response :success
  end

  test "should update etiquetum" do
    patch etiquetum_url(@etiquetum), params: { etiquetum: { nombre: @etiquetum.nombre } }
    assert_redirected_to etiquetum_url(@etiquetum)
  end

  test "should destroy etiquetum" do
    assert_difference('Etiquetum.count', -1) do
      delete etiquetum_url(@etiquetum)
    end

    assert_redirected_to etiqueta_url
  end
end
