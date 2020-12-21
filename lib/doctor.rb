class Doctor
  attr_accessor :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointments| appointments.doctor == self}
  end

  def new_appointment(date, patient)
    Appointment.new(patient, date, self)
  end

  def patients
    appointments.map do |appointment| new_appointment.patient
    end
  end

end
