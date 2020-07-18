require 'pry'
class Doctor
    attr_accessor :name, :appointment
    @@all=[]
    
    def self.all
        @@all
    end
    
    def self.clear_all
        self.all.cear
    end

    def save
        @@all<<self
    end

    def initialize (name)
        @name=name
        save
    end

    def new_appointment (date, patient)
        new_appointment = Appointment.new(date, self, patient)
    end

    def appointments
        Appointment.all.select {|each_appointment|each_appointment.doctor=self}
    end

    def patients
        binding.pry
        appointments.collect{|each_appointment|each_appointment.patient}
        # binding.pry
    end

end