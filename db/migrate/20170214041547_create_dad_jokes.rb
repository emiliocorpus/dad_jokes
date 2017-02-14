class CreateDadJokes < ActiveRecord::Migration
  def change
    create_table :dad_jokes do |t|
      t.string :joke
      t.string :answer
      t.float :rating
      t.integer :rated_votes

      t.timestamps null: false
    end
  end
end
