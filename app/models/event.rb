class Event < ActiveRecord::Base

	validates_presence_of :eventname, :eventdescription, :eventdate
	validates :eventdate, :uniqueness => true

	#Validte Date - must not be in the past
	validate :eventdate_cannot_be_in_the_past
	def eventdate_cannot_be_in_the_past
    if eventdate.present? && eventdate < Date.today
      errors.add(:eventdate, "Event can't be in the past, please check the date")
    end
  end

  # Another validation (might work) Date must be between now and 2 years time
  # validates_inclusion_of :eventdate,
  # :in => Date.today..Date.civil(Time.now + 2.years),
  # :message => "must be between now and 2016"
	
end