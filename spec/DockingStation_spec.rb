require 'docking_station'

describe DockingStation do 
  describe 'responds to release_bike' do
  it {expect(DockingStation.new).to respond_to(:release_bike)} 
end 
end

# describe 'fizzbuzz' do 
#   it 'returns "FizzBuzz" when passed 15' do
#     expect(DockingStation)).to eq 0
#   end 
# end 
#   it 'returns "Fizz" when passed 3' do
#     expect(fizzbuzz(3)).to eq 'Fizz'
#   end 
#   it 'returns "Buzz" when passed 5' do
#     expect(fizzbuzz(5)).to eq 'Buzz'
#   end 
# end 