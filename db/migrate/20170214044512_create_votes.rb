class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :value
      t.integer :dad_joke_id

      t.timestamps null: false
    end
  end
end
