require 'test_helper'

class MinhaPaginasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minha_pagina = minha_paginas(:one)
  end

  test "should get index" do
    get minha_paginas_url
    assert_response :success
  end

  test "should get new" do
    get new_minha_pagina_url
    assert_response :success
  end

  test "should create minha_pagina" do
    assert_difference('MinhaPagina.count') do
      post minha_paginas_url, params: { minha_pagina: {  } }
    end

    assert_redirected_to minha_pagina_url(MinhaPagina.last)
  end

  test "should show minha_pagina" do
    get minha_pagina_url(@minha_pagina)
    assert_response :success
  end

  test "should get edit" do
    get edit_minha_pagina_url(@minha_pagina)
    assert_response :success
  end

  test "should update minha_pagina" do
    patch minha_pagina_url(@minha_pagina), params: { minha_pagina: {  } }
    assert_redirected_to minha_pagina_url(@minha_pagina)
  end

  test "should destroy minha_pagina" do
    assert_difference('MinhaPagina.count', -1) do
      delete minha_pagina_url(@minha_pagina)
    end

    assert_redirected_to minha_paginas_url
  end
end
