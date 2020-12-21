class Doctor

  attr_accessor :name, :appointment
  @@all = []

  def initialize(name)
    @name = name
    @aapointment = appointment
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end

  def new_appointment(date, patient)
     appointment = Appointment.new(patient, date, self)
     @appointments << appointment
     appointment
  end

  def patients
    appointments.map {|appointment| appointment.patient}
  end
end
