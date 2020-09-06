class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :movie_title
      t.string :user
      t.integer :stars
      t.integer :movie_id
      t.text :review
      t.timestamps
    end
  end
end
