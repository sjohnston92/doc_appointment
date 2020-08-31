class AppointmentsController < ApplicationController
  before_action :set_user


  def index
    @jans= @user.appointments.where(date: 'Jan')
    @decs= @user.appointments.where(date: 'Dec')
    @febs= @user.appointments.where(date: 'Feb')
  
  end

  def new
    @appointment = @user.appointments.new
    @doctor=Doctor.all
  end

  def create
    @appointment = @user.appointments.new(appointment_params)
    @doctor=Doctor.all
    if @appointment.save
      redirect_to user_appointments_path(@user)
    else
      render :new
      
    end
  end

  def destroy
    @appointment = @user.appointments.find(params[:id])
    @appointment.destroy
    redirect_to user_appointments_path(@user)
  end

  private
  def set_user
    @user = User.find(params[:user_id]) 
  end

  def appointment_params
    params.require(:appointment).permit(:users_id)
  end






end

