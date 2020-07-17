require 'pry'
require_relative './patient.rb'
require_relative './appointment.rb'

class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select {|app| app.doctor == self}
    end
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    def patients
        appointments.map do |appointment|
            appointment.push(appointment.patient)
        end
    end
end
