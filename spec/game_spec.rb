require 'game'

describe Game do
    it 'returns Game class' do
     expect(subject).to respond_to(:attack)
    end 
end