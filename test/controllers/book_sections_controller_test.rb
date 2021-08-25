require "test_helper"

class BookSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_section = book_sections(:one)
  end

  test "should get index" do
    get book_sections_url
    assert_response :success
  end

  test "should get new" do
    get new_book_section_url
    assert_response :success
  end

  test "should create book_section" do
    assert_difference('BookSection.count') do
      post book_sections_url, params: { book_section: { books_quantity: @book_section.books_quantity, max_quantity: @book_section.max_quantity, title: @book_section.title } }
    end

    assert_redirected_to book_section_url(BookSection.last)
  end

  test "should show book_section" do
    get book_section_url(@book_section)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_section_url(@book_section)
    assert_response :success
  end

  test "should update book_section" do
    patch book_section_url(@book_section), params: { book_section: { books_quantity: @book_section.books_quantity, max_quantity: @book_section.max_quantity, title: @book_section.title } }
    assert_redirected_to book_section_url(@book_section)
  end

  test "should destroy book_section" do
    assert_difference('BookSection.count', -1) do
      delete book_section_url(@book_section)
    end

    assert_redirected_to book_sections_url
  end
end
