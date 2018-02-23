class PatientsController < ApplicationController

  def index
    @patients = Patient.all
    render json: {patients: @patients}
  end

  def create
    @patient = Patient.new(
      name: params[:name],
      age: params[:age].to_i,
      address: params[:address],
      phone_number:
      params[:phone_number]
    )

    if @patient.save
      render json: {patient: @patient}
    else
      render json: {message: "invalid request"}, status: 400
    end
  end

  def show
    @patient = Patient.find(params[:id])
    render json: {patient: @patient}
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(
      name: params[:name],
      age: params[:age].to_i,
      address: params[:address],
      phone_number: params[:phone_number]
    )

    render json: {patient: @patient}
  end

  def destroy
    @patient = Patient.find(params[:id])

    @patient.destroy

    render json: {}, status: 200
  end

  def appointments
    @patient = Patient.find(params[:id])

    @appointments = @patient.appointments

    render json: {appointments: @appointments}
  end

end
