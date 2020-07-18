class Patient
    attr_accessor :name, :doctor, :appointment
    @@all=[]

    def self.all
        @@all
    end

    def self.clear_all
        sell.all.clear
    end
    
    def save
        @@all<<self
    end

    def initialize(name)
        @name=name
        save
    end

    def new_appointment (doctor, date)
        new_appointment = Appointment.new(date, self, doctor)
        # binding.pry
    end

    def appointments
        Appointment.all.select {|each_appointment|each_appointment.patient==self}
    end

    def doctors
        appointments
        # binding.pry
        appointments.collect{|each_appointment|each_appointment.doctor}
    end
end