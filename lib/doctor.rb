require 'pry'

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
      Appointment.all.select {|inst_appointment| inst_appointment.doctor == self}
    end

    def new_appointment(patient, date)
      newappointment = Appointment.new(date, patient, self)
    end

    def patients
      self.appointments.map {|doc_appointment| doc_appointment.patient}
    end
  
  end
  