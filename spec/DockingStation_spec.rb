require 'docking_station'
require 'bike'

describe DockingStation do
  # using the below hash to imply that it is an instance method
  describe '#release_bike' do
    it 'releases an error when there are no bikes' do
      expect{ subject.release_bike }.to raise_error "Error. No Bike."
    end
  end

  # describe '#dock' do 
  #   it "raises an error when docking station full" do 
  #     bike = Bike.new
  #     subject.dock(bike)
  #     expect{ subject.dock(Bike.new)}.to raise_error "Error docking station full."
  #   end 
  # end 

  describe '#dock' do 
    it 'raises an error when full' do 
      subject.capacity.times{subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error "Error docking station full."
    end 
  end 

describe 'initialization' do 
  it 'accepts capacity of 50' do 
    docking_station = DockingStation.new(50)
    expect(docking_station.capacity).to eq 50 
  end 
end 

describe 'initialization' do 
  it 'has default capacity of 20' do 
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
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
    expect(subject.dock(bike)).to be_a(Array)
    end

  describe 'bike' do
    it { is_expected.to respond_to(:bike_rack)}
  end

  it "counts docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_rack).to be_a(Array)
  end
end

  #   it "Should default to 20 if no argument given" do
  #     expect{subject.initialize.with(0).argument}.to eq 20
  #   end
  # end

  # # describe 'dock' do
  # describe "#initialize" do
  #   it ''


  #   it {is_expected.to respond_to(:initialize).with(1).argument}
  #   end
  # end
# end
# end
