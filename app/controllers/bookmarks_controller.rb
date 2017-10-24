class BookmarksController < ApplicationController

before_action :lookfor_book

  def Index
    @bookmarks = Bookmark.all
  end

  def show

  end

  def new
    @bookmark = @book.bookmarks.new
  end

  def edit

  end

  def create
    @bookmark = @book.bookmarks.new(bookmark_params)
    if @bookmark.save
      flash[:success] = "Bookmark is created"
      redirect_to books_path
    else
      flash[:error] = "Bookmark is not saved"
      render :new
    end
  end

  def update

  end

  def destroy


  end

private

  def lookfor_book
    @book = Book.find(params[:book_id])
  end

    def bookmark_params
      params.require(:bookmark).permit(:page_num, :decrip)
    end
end
