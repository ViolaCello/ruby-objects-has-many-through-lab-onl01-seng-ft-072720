class Doctor
  attr_accessor :name
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient)
  end
  
  def appointments
  Appointment.all.select do |app|
    app.doctor == self
  end
end

def patients
  
end
  
end