class AddDaddyToDadJokes < ActiveRecord::Migration
  def change
    add_column :dad_jokes, :daddy, :string
  end
end
