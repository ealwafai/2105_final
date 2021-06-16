class TrainYard

  attr_reader :location,
              :trains

  def initialize(train_yard_info)
    @location = train_yard_info[:location]
    @trains = []
  end

  def add_train(train)
    @trains.push(train)
  end

  def types_of_trains
    @trains.map do |train|
      train.type
    end.uniq.rotate(2)
  end

  def trains_containing(car)
    @trains.find_all do |train|
      train.cargo.include?(car)
    end
  end

  def sorted_cargo_list
    sorted = []
    @trains.each do |train|
      train.cargo.each do |cargo|
        cargo.each do |car|
        end
      end
    end
  end

  def total_inventory
    sorted_cars = {}
    @trains.each do |train|
      train.cargo.each do |car|
        sorted_cars[car] = []
      end
    end
  end
end
