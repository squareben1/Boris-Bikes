require 'docking_station'
require 'bike'

describe DockingStation do
  describe 'responds to release_bike' do
    it {expect(subject).to respond_to(:release_bike)}
  end
  describe 'responds to wokring' do
    it {expect(subject.release_bike).to respond_to(:working?)}
  end
  describe 'returns true' do
    it {expect(subject.release_bike).to be_working}
  end
  describe 'dock' do
    it {is_expected.to respond_to(:dock).with(1).argument }
  end 
  it 'docks something' do 
    bike = Bike.new 
    expect(subject.dock(bike)).to eq bike      
  end
  describe 'bike' do 
    it { is_expected.to respond_to(:bike)}
  end 
  it "something something" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
 

end

# describe DockingStation do
#   describe 'releases a bike' do
#   it {expect(:release_bike).to eq Bike}
# end
# end

# Your test should check that you can call working? on the result of DockingStation.release_bike,
# and that the result of doing so is true.

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
