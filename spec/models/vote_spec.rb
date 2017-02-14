require 'rails_helper'

RSpec.describe Vote, type: :model do
	let(:dad_joke) { DadJoke.create(joke:"What do you call a man with a rubber toe?", answer: "Roberto.") }
	let(:vote) { Vote.create(value: 4, dad_joke_id: dad_joke.id) }

	it 'should be an integer' do
		expect(vote.value).to eq 4
	end

	it 'should belong to a joke' do
		expect(vote.dad_joke).to eq dad_joke
	end

end
