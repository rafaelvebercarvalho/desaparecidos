require "application_system_test_case"

class ApresentacoesTest < ApplicationSystemTestCase
  setup do
    @apresentacao = apresentacoes(:one)
  end

  test "visiting the index" do
    visit apresentacoes_url
    assert_selector "h1", text: "Apresentacoes"
  end

  test "creating a Apresentacao" do
    visit apresentacoes_url
    click_on "New Apresentacao"

    click_on "Create Apresentacao"

    assert_text "Apresentacao was successfully created"
    click_on "Back"
  end

  test "updating a Apresentacao" do
    visit apresentacoes_url
    click_on "Edit", match: :first

    click_on "Update Apresentacao"

    assert_text "Apresentacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Apresentacao" do
    visit apresentacoes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apresentacao was successfully destroyed"
  end
end
