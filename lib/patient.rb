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
  
  
  
end