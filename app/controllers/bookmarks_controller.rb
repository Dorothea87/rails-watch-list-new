class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.save
    @list 
    redirect_to list_path(@list)
  end

   private

  def bookmark_params
    params.require(:Bookmark).permit(:comment, :movie_id)
  end
end
