class RegistrationsController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD'], only: :index

  def index
    @registrations = Registration.all

    respond_to do |format|
      format.xlsx {
        response.headers['Content-Disposition'] = 'attachment; filename="Inschrijvingen.xlsx"'
      }
    end
  end

  def create
    @registration = Registration.new(registration_params)

    respond_to do |format|
      if @registration.save
        RegistrationMailer.welcome(@registration).deliver_later
        format.html { redirect_to root_url, notice: 'Registration was successfully created.' }
        format.js { @registration = Registration.new }
      else
        format.html { render :new }
        format.js
      end
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:name, :email, :club, :acro, :food, :presence_day, :presence_evening, :presence_night)
  end
end
