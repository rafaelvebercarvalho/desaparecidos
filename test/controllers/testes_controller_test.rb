require 'test_helper'

class TestesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @teste = testes(:one)
  end

  test "should get index" do
    get testes_url
    assert_response :success
  end

  test "should get new" do
    get new_teste_url
    assert_response :success
  end

  test "should create teste" do
    assert_difference('Teste.count') do
      post testes_url, params: { teste: { descricao: @teste.descricao, nome: @teste.nome } }
    end

    assert_redirected_to teste_url(Teste.last)
  end

  test "should show teste" do
    get teste_url(@teste)
    assert_response :success
  end

  test "should get edit" do
    get edit_teste_url(@teste)
    assert_response :success
  end

  test "should update teste" do
    patch teste_url(@teste), params: { teste: { descricao: @teste.descricao, nome: @teste.nome } }
    assert_redirected_to teste_url(@teste)
  end

  test "should destroy teste" do
    assert_difference('Teste.count', -1) do
      delete teste_url(@teste)
    end

    assert_redirected_to testes_url
  end
end
