class Patient
  attr_accessor :name 
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all.push(self)
  end
  
  def new_appointment(date, doctor)
    Appointment.new(date, doctor)
  end
  
  def appointments
        g = []
  appointments.select do |app|
    g.push(app.patient)
  end
  g
  end
  
  def doctors
    
  end
  
  
end