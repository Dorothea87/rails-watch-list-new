class RemoveMovieIdFromBookmarks < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookmarks, :movie_id
  end
end
