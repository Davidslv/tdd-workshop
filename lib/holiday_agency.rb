class VillasService
  def self.check_availability(week, year)
  end
end

class FlightsService
  def self.check_availability(week, year, departure, destination)
  end
end

class HolidayAgency

  def initialize(week, year, departure, destination)
    @week = week
    @year = year
    @departure = departure
    @destination = destination
  end

  def available_villas
    flights = FlightsService.check_availability(@week, @year, @departure, @destination)
    villas  = VillasService.check_availability(@week, @year)

    return villas if villas && flights

    []
  end
end
