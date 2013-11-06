class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :stars

      t.timestamps
    end
  end
end
