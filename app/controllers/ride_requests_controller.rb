# frozen_string_literal: true

class RideRequestsController < ApplicationController
  @@rideid = ""
  def index
    id = params['ride_id']
    @requests = RideRequest.where(ride_id: id)
  end
  def new 
    #params
    @@rideid = params["ride_id"]

  end
  def create
    puts "dsadasdas", params
    obj = User.find_by(email: params["email"])
    RideRequest.create(destination: params["Destination"], status: "booked", user_id: obj.id, ride_id: @@rideid)
    redirect_to rides_path
  end

end
