require 'injection'
describe Array do 

	it 'adds' do 
		expect([1,2,3,4].injection(&:+)).to eq 10
	end

	it 'times' do
		expect([1,2,3,4].injection(&:*)).to eq 24
	end

	it 'divides' do 
		expect([30,5,3,2].injection(&:/)).to eq 1
	end
end