class Api::V1::RidesController < ApplicationController

    def index
        rides = Ride.all
        render json: RideSerializer.new(rides)
    end

    def create
        ride = Ride.new(ride_params)
        if ride.save
            render json: RideSerializer.new(ride)
        else
            render json: { error: "Error creating ride"}
        end
    end

    private

    def ride_params
        params.require(:ride).permit(:date, :horse_id, :service_id)
    end
end
