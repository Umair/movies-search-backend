class CreateJoinTableMoviesActors < ActiveRecord::Migration[5.2]
  def change
    create_join_table :actors, :movies do |t|
      t.integer :actor_id
      t.integer :movie_id

      t.index :actor_id
      t.index :movie_id
    end
  end
end
