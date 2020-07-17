require_relative './doctor.rb'
require_relative './appointment.rb'
require_relative './patient.rb'
require 'pry'


doogie = Doctor.new("Doogie Howser")
ferris = Patient.new("Ferris Bueller")
new_appointment = Appointment.new('January 1st, 1989', ferris, doogie)


binding.pry