require 'rails_helper'

RSpec.describe DadJoke, type: :model do
	let(:dad_joke) { DadJoke.create(joke: "Why do zoo animals make the worst test takers?", answer: "Because they have cheetahs.") }
	it 'should have a joke and answer' do
		expect(dad_joke.joke).to eq "Why do zoo animals make the worst test takers?"
		expect(dad_joke.answer).to eq "Because they have cheetahs."
	end
	it 'should have a rating of 0 for a freshly made joke' do
		expect(dad_joke.rating).to eq 0.00
	end
	
end
