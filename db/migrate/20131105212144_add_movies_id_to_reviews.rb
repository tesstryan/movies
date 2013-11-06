class AddMoviesIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :movies_id, :integer
  end
end
