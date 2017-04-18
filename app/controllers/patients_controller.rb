class PatientsController < ApplicationController
  def index
    @patients = Patient.all

    render json: @patients
    # render ({json: @patients})
  end
end
