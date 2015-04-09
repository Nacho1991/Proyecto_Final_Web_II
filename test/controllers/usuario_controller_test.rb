require 'test_helper'

class UsuarioControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get crear" do
    get :crear
    assert_response :success
  end

  test "should get ver" do
    get :ver
    assert_response :success
  end

  test "should get editar" do
    get :editar
    assert_response :success
  end

  test "should get actualizar" do
    get :actualizar
    assert_response :success
  end

  test "should get eliminar" do
    get :eliminar
    assert_response :success
  end

end
