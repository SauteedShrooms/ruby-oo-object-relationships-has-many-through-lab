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
      Appointment.all.select {|inst_appointment| inst_appointment.patient == self}
    end

    def new_appointment(doctor, date)
      newappointment = Appointment.new(date, self, doctor)
    end

    def doctors
      self.appointments.map {|patient_appointment| patient_appointment.doctor}
    end

  
  end
  