require "application_system_test_case"

class MinhaPaginasTest < ApplicationSystemTestCase
  setup do
    @minha_pagina = minha_paginas(:one)
  end

  test "visiting the index" do
    visit minha_paginas_url
    assert_selector "h1", text: "Minha Paginas"
  end

  test "creating a Minha pagina" do
    visit minha_paginas_url
    click_on "New Minha Pagina"

    click_on "Create Minha pagina"

    assert_text "Minha pagina was successfully created"
    click_on "Back"
  end

  test "updating a Minha pagina" do
    visit minha_paginas_url
    click_on "Edit", match: :first

    click_on "Update Minha pagina"

    assert_text "Minha pagina was successfully updated"
    click_on "Back"
  end

  test "destroying a Minha pagina" do
    visit minha_paginas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Minha pagina was successfully destroyed"
  end
end
