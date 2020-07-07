class Doctor
  attr_accessor :name, :add_appointment
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << name
  end
  
  def self.all
    @@all
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    Appointment.all.select do |a|
      a.doctor == self
    end
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end
end
