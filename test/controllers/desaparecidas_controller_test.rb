require 'test_helper'

class DesaparecidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desaparecida = desaparecidas(:one)
  end

  test "should get index" do
    get desaparecidas_url
    assert_response :success
  end

  test "should get new" do
    get new_desaparecida_url
    assert_response :success
  end

  test "should create desaparecida" do
    assert_difference('Desaparecida.count') do
      post desaparecidas_url, params: { desaparecida: { data_nascimento: @desaparecida.data_nascimento, idade: @desaparecida.idade, mae: @desaparecida.mae, nome: @desaparecida.nome, pai: @desaparecida.pai, sexo: @desaparecida.sexo, usuario_id: @desaparecida.usuario_id } }
    end

    assert_redirected_to desaparecida_url(Desaparecida.last)
  end

  test "should show desaparecida" do
    get desaparecida_url(@desaparecida)
    assert_response :success
  end

  test "should get edit" do
    get edit_desaparecida_url(@desaparecida)
    assert_response :success
  end

  test "should update desaparecida" do
    patch desaparecida_url(@desaparecida), params: { desaparecida: { data_nascimento: @desaparecida.data_nascimento, idade: @desaparecida.idade, mae: @desaparecida.mae, nome: @desaparecida.nome, pai: @desaparecida.pai, sexo: @desaparecida.sexo, usuario_id: @desaparecida.usuario_id } }
    assert_redirected_to desaparecida_url(@desaparecida)
  end

  test "should destroy desaparecida" do
    assert_difference('Desaparecida.count', -1) do
      delete desaparecida_url(@desaparecida)
    end

    assert_redirected_to desaparecidas_url
  end
end
