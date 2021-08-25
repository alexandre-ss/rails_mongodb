class BookSectionsController < ApplicationController
  before_action :set_book_section, only: %i[ show edit update destroy ]

  def index
    @book_sections = BookSection.all
  end

  def show
  end

  def new
    @book_section = BookSection.new
  end

  def edit
  end

  def create
    @book_section = BookSection.new(book_section_params)

    respond_to do |format|
      if @book_section.save
        format.html { redirect_to @book_section, notice: "Book section was successfully created." }
        format.json { render :show, status: :created, location: @book_section }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_section.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book_section.update(book_section_params)
        format.html { redirect_to @book_section, notice: "Book section was successfully updated." }
        format.json { render :show, status: :ok, location: @book_section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_section.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book_section.destroy
    respond_to do |format|
      format.html { redirect_to book_sections_url, notice: "Book section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_book_section
      @book_section = BookSection.find(params[:id])
    end

    def book_section_params
      params.require(:book_section).permit(:title, :max_quantity, :books_quantity)
    end
end
