class Booklawn < ActiveRecord::Base

	belongs_to :lawnground

	validates_presence_of :starttime, :endtime, :lawnname, :availability

	validate :endtime_is_after_starttime
	def endtime_is_after_starttime
		return if endtime.blank? || starttime.blank?
		if endtime < starttime
			errors.add(:endtime, "cannot be before the start date")
		end

		if starttime.present? && starttime < Time.now
			errors.add(:starttime, "Startime cannot be in the past")
		end
		if endtime.present? && endtime < Time.now + 1.hour
			errors.add(:endtime, "must be at least an hour after")
		end
	end
end
