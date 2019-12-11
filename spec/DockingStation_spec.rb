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

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      # trying to release the docked bike
      expect(subject.release_bike).to eq bike
    end
  end
  # describe 'responds to release_bike' do
  #   it {expect(DockingStation.new).to respond_to(:release_bike)}
  # end

# --- Bellow comment out was throwing error ----

  # describe 'responds to working' do
  #   it {expect(DockingStation.new.release_bike).to respond_to(:working?)}
  # end

  # As released bike method was updated this also needed to be updated

# ----------------------------------------------

  it 'responds to working' do
    bike = Bike.new
    expect(bike).to be_working
  end

# ---- Bellow comment out was throwing error ----

  # describe 'returns true' do
  #   it {expect(DockingStation.new.release_bike).to be_working}
  # end

# We only want to give extra describes if it is an instance of a method

# -----------------------------------------------

  # it 'returns true' do
  #   result = subject.release_bike
  #   expect(result).to be_working
  # end

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
