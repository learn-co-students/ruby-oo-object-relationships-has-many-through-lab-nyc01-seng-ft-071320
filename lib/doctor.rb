class Doctor
attr_reader :name, :appointment, :patients
@@all=[]
    def initialize(name)
        @@all<<self
        @name= name
        appointment=appointment
    
    end 
   def self.all    
        @@all
    end 
     def appointments
        Appointment.all.select{|day| day.doctor == self}
     end 
     
     def new_appointment(date, patient)
        Appointment.new(patient, date, self)
     end

      def patients
         appointments.map do |appointment| 
           appointment.patient
         end
     end 
end 