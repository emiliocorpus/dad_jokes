require 'rails_helper'

RSpec.describe DadJoke, type: :model do
	let!(:dad_joke) { DadJoke.create(joke: "Why do zoo animals make the worst test takers?", answer: "Because they have cheetahs.") }
	

	context 'a newly created joke' do 
		it 'should have a joke' do
			expect(dad_joke.joke).to eq "Why do zoo animals make the worst test takers?"
		end

		it 'should have an answer to the joke' do
			expect(dad_joke.answer).to eq "Because they have cheetahs."
		end

		it 'should have a rating of 0' do
			expect(dad_joke.rating).to eq 0.00
		end

		it 'should have a total of 0 rated votes' do
			expect(dad_joke.votes.count).to eq 0
		end
	end

	context 'a just voted on joke' do
		let!(:vote) { Vote.create(value:3, dad_joke_id: dad_joke.id)}
		it 'should have an increased rating' do
			dad_joke.calculate_rating
			expect(dad_joke.rating).to be > 2.9
		end
		it 'should have an increased vote count' do
			expect { Vote.create(value:4, dad_joke_id: dad_joke.id) }.to change { dad_joke.votes.count }.from(1).to(2)
		end
	end
	
end
