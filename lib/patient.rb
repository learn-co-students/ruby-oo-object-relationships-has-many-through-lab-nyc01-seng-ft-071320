class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        new_appt = Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.map do |appointment|
            if appointment.patient == self
                appointment
            end
        end.compact
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}
    end
end