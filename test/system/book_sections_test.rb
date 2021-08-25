require "application_system_test_case"

class BookSectionsTest < ApplicationSystemTestCase
  setup do
    @book_section = book_sections(:one)
  end

  test "visiting the index" do
    visit book_sections_url
    assert_selector "h1", text: "Book Sections"
  end

  test "creating a Book section" do
    visit book_sections_url
    click_on "New Book Section"

    fill_in "Books quantity", with: @book_section.books_quantity
    fill_in "Max quantity", with: @book_section.max_quantity
    fill_in "Title", with: @book_section.title
    click_on "Create Book section"

    assert_text "Book section was successfully created"
    click_on "Back"
  end

  test "updating a Book section" do
    visit book_sections_url
    click_on "Edit", match: :first

    fill_in "Books quantity", with: @book_section.books_quantity
    fill_in "Max quantity", with: @book_section.max_quantity
    fill_in "Title", with: @book_section.title
    click_on "Update Book section"

    assert_text "Book section was successfully updated"
    click_on "Back"
  end

  test "destroying a Book section" do
    visit book_sections_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book section was successfully destroyed"
  end
end
