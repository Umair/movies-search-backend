class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :year
      t.string :director
      t.text :filming_locations
      t.string :filming_country
      t.timestamps
    end
  end
end
