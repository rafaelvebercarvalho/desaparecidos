require 'test_helper'

class DesaparecidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desaparecido = desaparecidos(:one)
  end

  test "should get index" do
    get desaparecidos_url
    assert_response :success
  end

  test "should get new" do
    get new_desaparecido_url
    assert_response :success
  end

  test "should create desaparecido" do
    assert_difference('Desaparecido.count') do
      post desaparecidos_url, params: { desaparecido: { data_nascimento: @desaparecido.data_nascimento, idade: @desaparecido.idade, mae: @desaparecido.mae, nome: @desaparecido.nome, pai: @desaparecido.pai, sexo: @desaparecido.sexo, usuario_id: @desaparecido.usuario_id } }
    end

    assert_redirected_to desaparecido_url(Desaparecido.last)
  end

  test "should show desaparecido" do
    get desaparecido_url(@desaparecido)
    assert_response :success
  end

  test "should get edit" do
    get edit_desaparecido_url(@desaparecido)
    assert_response :success
  end

  test "should update desaparecido" do
    patch desaparecido_url(@desaparecido), params: { desaparecido: { data_nascimento: @desaparecido.data_nascimento, idade: @desaparecido.idade, mae: @desaparecido.mae, nome: @desaparecido.nome, pai: @desaparecido.pai, sexo: @desaparecido.sexo, usuario_id: @desaparecido.usuario_id } }
    assert_redirected_to desaparecido_url(@desaparecido)
  end

  test "should destroy desaparecido" do
    assert_difference('Desaparecido.count', -1) do
      delete desaparecido_url(@desaparecido)
    end

    assert_redirected_to desaparecidos_url
  end
end
