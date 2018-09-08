require "application_system_test_case"

class DesaparecidosTest < ApplicationSystemTestCase
  setup do
    @desaparecido = desaparecidos(:one)
  end

  test "visiting the index" do
    visit desaparecidos_url
    assert_selector "h1", text: "Desaparecidos"
  end

  test "creating a Desaparecido" do
    visit desaparecidos_url
    click_on "New Desaparecido"

    fill_in "Data Nascimento", with: @desaparecido.data_nascimento
    fill_in "Idade", with: @desaparecido.idade
    fill_in "Mae", with: @desaparecido.mae
    fill_in "Nome", with: @desaparecido.nome
    fill_in "Pai", with: @desaparecido.pai
    fill_in "Sexo", with: @desaparecido.sexo
    fill_in "Usuario", with: @desaparecido.usuario_id
    click_on "Create Desaparecido"

    assert_text "Desaparecido was successfully created"
    click_on "Back"
  end

  test "updating a Desaparecido" do
    visit desaparecidos_url
    click_on "Edit", match: :first

    fill_in "Data Nascimento", with: @desaparecido.data_nascimento
    fill_in "Idade", with: @desaparecido.idade
    fill_in "Mae", with: @desaparecido.mae
    fill_in "Nome", with: @desaparecido.nome
    fill_in "Pai", with: @desaparecido.pai
    fill_in "Sexo", with: @desaparecido.sexo
    fill_in "Usuario", with: @desaparecido.usuario_id
    click_on "Update Desaparecido"

    assert_text "Desaparecido was successfully updated"
    click_on "Back"
  end

  test "destroying a Desaparecido" do
    visit desaparecidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desaparecido was successfully destroyed"
  end
end
