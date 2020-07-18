class Appointment
    attr_accessor :date, :doctor, :patient
    @@all=[]

    def self.all
        @@all
    end

    def self.clear_all
        self.all.clear
    end
        
    def initialize (date, doctor, patient)
        @date=date
        @doctor=doctor
        @patient=patient
        @@all<<self
    end

end