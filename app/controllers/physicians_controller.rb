class PhysiciansController < ApplicationController

  def index
    @physicians = Physician.all
    render json: { physicians: @physicians }
  end

  def show
    @physician = Physician.find(params[:id])
    render json: { physician: @physician }
  end

  def create
    @physician = Physician.new(
      name: params[:name],
      age: params[:age].to_i,
      address: params[:address],
      phone_number: params[:phone_number],
      expertise_area: params[:expertise_area]
    )
    if @physician.save
      render json: { physician: @physician }
    else
      render json: { message: "error: all fields must be filled" }, status: 400
    end
  end

  def update
    @physician = Physician.find(params[:id])
    @physician.update(
      name: params[:name],
      age: params[:age].to_i,
      address: params[:address],
      phone_number: params[:phone_number],
      expertise_area: params[:expertise_area]
    )

    render json: {patient: @patient}
  end

  def destroy
    @physician = Physician.find(params[:id])

    @physician.destroy
  end

  def appointments
    @physican = Physician.find(params[:id])

    @appointments = @physican.appointments

    render json: { appointments: @appointments }
  end
end
