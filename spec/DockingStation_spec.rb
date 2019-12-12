require 'docking_station'
require 'bike'

describe DockingStation do
  # updating release bike method
  # using the below hash to imply that it is an instance method
  describe '#release_bike' do
    it 'releases an error when there are no bikes' do
      expect{ subject.release_bike }.to raise_error "Error. No Bike."
    end
  end

  describe '#dock' do 
    it "raises an error when docking station full" do 
      bike = Bike.new
      subject.dock(bike)
      expect{ subject.dock(Bike.new)}.to raise_error "Error docking station full."
    end 
  end 

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # trying to release the docked bike
      expect(subject.release_bike).to eq bike
    end
  end

  it 'responds to working' do
    bike = Bike.new
    expect(bike).to be_working
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
#   it "wants to raise an error" do
#     expect{ subject.release_bike }.to raise_error "Error. No Bike."
#   end
# end

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
