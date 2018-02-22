class PatientsController < ApplicationController

  def index
    patients = Patient.all
    render json: {patients: patients}
  end

  def show
    patient = Patient.find(params[:id])
    render json: {patient: patient}
  end

end
