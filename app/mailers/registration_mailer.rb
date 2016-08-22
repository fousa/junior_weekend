class RegistrationMailer < ApplicationMailer
  def welcome(registration)
    @registration = registration
    mail(to: @registration.email, subject: 'Registratie Junioren Weekend 2016')
  end
end
