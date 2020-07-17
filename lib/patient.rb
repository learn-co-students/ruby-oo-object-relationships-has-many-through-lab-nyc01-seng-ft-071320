class Patient

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
        Appointment.all.select {|appt| appt.patient == self}
    end

    def new_appointment(date, doctor)
        new_appt = Appointment.new(date, self, doctor)
    end

    def doctors
        Doctor.all
    end
    





end
