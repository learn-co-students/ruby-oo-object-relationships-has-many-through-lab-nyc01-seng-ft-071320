require 'pry'
class Doctor
    attr_accessor :name, :appointment
    @@all=[]
    @@test=[]
    
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

    def new_appointment (patient,date)
        new_appointment = Appointment.new(date, patient, self)
        # binding.pry
    end

    def appointments
        aa=Appointment.all.select {|each_appointment|each_appointment.doctor==self}
        # binding.pry
        # aa
    end

    def patients
        # binding.pry
        # ab= appointments
        # binding.pry
        x= appointments.collect{|each|each.patient}
        # binding.pry
    end

end