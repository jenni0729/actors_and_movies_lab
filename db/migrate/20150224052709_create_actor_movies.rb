class CreateActorMovies < ActiveRecord::Migration
  def change
    create_table :actor_movies do |t|
      t.integer :actor_id
      t.integer :movie_id
      t.belongs_to :actor, index: true
      t.belongs_to :movie, index: true

      t.timestamps
    end
  end
end
