class AppointmentsController < ApplicationController

  def index
    @appointment = Appointment.all
    render json: {appointments: @appointment}
  end

  def create
    @appointment = Appointment.create(title: params[:title], date: Date.parse(params[:date]), location: params[:location], patient_id: params[:patient_id].to_i, physician_id: params[:physician_id].to_i)

    render json: {appointment: @appointment}
  end

  def show
    @appointment = Appointment.find(params[:id])
    render json: {appointment: @appointment}
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(name: params[:name], age: params[:age].to_i, address: params[:address], phone_number: params[:phone_number])

    render json: {appointment: @appointment}
  end

  def destroy
    @appointment = Appointment.find(params[:id])

    @appointment.destroy

    render json: {}, status: 200
  end

end
