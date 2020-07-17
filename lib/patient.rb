class Patient
    attr_accessor :name, :patient
    
        @@all = []
        
        def initialize(name)
            @name = name
            @@all << self
        end
    
        def self.all
            @@all
        end

        def new_appointment(doctor,date)
           app = Appointment.new(date, self, doctor)
           app 
        end

        def appointments
            Appointment.all.select do |a|
            if a.patient == self
                a.patient
            end
          end 
        end

        def doctors
            Appointment.all.collect do |a|
                a.doctor == self
                a.doctor 
            end
        end
    
    
    end
