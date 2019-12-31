# frozen_string_literal: true

class RidesController < ApplicationController
  def index
    rides = []
    driver_name = []
    Ride.all.each do |ele|
      rides.push(ele)
      ride_count = Ride.count
    end
    @all = rides
  end

end
