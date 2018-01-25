class DoctorsController < ApplicationController

    # before_action :set_doctor, only: [:show, :edit, :update, :destroy]

	def benefit

	end

  def index
    if params[:city].blank?
        @doctors = Doctor.all
        # @hash = Gmaps4rails.build_markers(@doctors) do |doctor, marker|
        # marker.lat doctor.latitude
        # marker.lng doctor.longitude
    else
        @doctors = Doctor.search_doctor(params[:city])
        # @hash = Gmaps4rails.build_markers(@doctors) do |doctor, marker|
        # marker.lat doctor.latitude
        # marker.lng doctor.longitude
    end
  end

  def show

  end

  def new
    # @doctor = Doctor.new
  end

  def create
    # @doctor = Doctor.new(doctor_params)
    # if @doctor.save
    #   flash[:success] = "Doctor added!"
    #   redirect_to root_path
    # else
    #   render :nex
    # end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_doctor
  	@doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:first_name, :second_name, :phone_number, :address)
  end

end
