
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
        Appointment.all.select do |a|
            a.doctor == self
        end
    end

    def new_appointment(patient, date)
       app = Appointment.new(date, patient, self)
       app 
    end

    def patients 
        Appointment.all.collect do |a|
          if a.doctor == self 
           a.patient      #date ? works like patient 
          end
        end
    end
    
    
end



