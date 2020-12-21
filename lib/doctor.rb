require 'pry'

class Doctor
  attr_accessor :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def patients
    appointments.map {|appointment| appointments.patient}
  end

end
