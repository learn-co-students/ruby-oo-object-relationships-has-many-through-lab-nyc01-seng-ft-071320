class Appointment

    @@all = []
    attr_accessor :date, :patient, :doctor
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

end