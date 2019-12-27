# frozen_string_literal: true

class RideRequestsController < ApplicationController
  def index
    id = params['ride_id']
    @requests = RideRequest.where(ride_id: id)
  end
end
