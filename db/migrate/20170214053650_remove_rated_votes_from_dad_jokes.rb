class RemoveRatedVotesFromDadJokes < ActiveRecord::Migration
  def change
    remove_column :dad_jokes, :rated_votes, :integer
  end
end
