require "application_system_test_case"

class DesaparecidasTest < ApplicationSystemTestCase
  setup do
    @desaparecida = desaparecidas(:one)
  end

  test "visiting the index" do
    visit desaparecidas_url
    assert_selector "h1", text: "Desaparecidas"
  end

  test "creating a Desaparecida" do
    visit desaparecidas_url
    click_on "New Desaparecida"

    fill_in "Data Nascimento", with: @desaparecida.data_nascimento
    fill_in "Idade", with: @desaparecida.idade
    fill_in "Mae", with: @desaparecida.mae
    fill_in "Nome", with: @desaparecida.nome
    fill_in "Pai", with: @desaparecida.pai
    fill_in "Sexo", with: @desaparecida.sexo
    fill_in "Usuario", with: @desaparecida.usuario_id
    click_on "Create Desaparecida"

    assert_text "Desaparecida was successfully created"
    click_on "Back"
  end

  test "updating a Desaparecida" do
    visit desaparecidas_url
    click_on "Edit", match: :first

    fill_in "Data Nascimento", with: @desaparecida.data_nascimento
    fill_in "Idade", with: @desaparecida.idade
    fill_in "Mae", with: @desaparecida.mae
    fill_in "Nome", with: @desaparecida.nome
    fill_in "Pai", with: @desaparecida.pai
    fill_in "Sexo", with: @desaparecida.sexo
    fill_in "Usuario", with: @desaparecida.usuario_id
    click_on "Update Desaparecida"

    assert_text "Desaparecida was successfully updated"
    click_on "Back"
  end

  test "destroying a Desaparecida" do
    visit desaparecidas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Desaparecida was successfully destroyed"
  end
end
