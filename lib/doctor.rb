class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
     appointment = Appointment.new(date, patient, self)
     appointment
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end
end
