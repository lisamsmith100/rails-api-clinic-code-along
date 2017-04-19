# frozen_string_literal: true

class PatientsController < ApplicationController
  def index
    @patients = Patient.all

    render json: @patients
    # render ({json: @patients})
  end

  def show
    render json: Patient.find(params[:id])
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def patient_params
    params.require(:patient).permit(:name, :diagnosis, :born_on)
  end
end
