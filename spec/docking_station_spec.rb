require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq bike
  end

  it 'docks a bike' do
    is_expected.to respond_to(:dock).with(1).argument
  end

  it 'docks working bikes' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'error when there are no more bikes' do
    expect {subject.release_bike}.to raise_error 'There are no bikes docked.'
  end

  it 'raises error dock is full' do
    bike = Bike.new
    subject.dock(Bike.new)
    expect {subject.dock(bike)}.to raise_error 'Docking station full.'
  end
end
