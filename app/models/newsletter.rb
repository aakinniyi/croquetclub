class Newsletter < ActiveRecord::Base

mount_uploader :attachment, NewsletterUploader # Tells rails to use this uploader for this model.
validates :name, presence: true # newsletter name must be present.
validates :newsdate, presence: true
validates :attachment, presence: true

#News Date - must be within the last 60days or future
validate :newsdate_cannot_be_too_old
def newsdate_cannot_be_too_old
	if newsdate.present? && newsdate < Date.today - 60
		errors.add(:newsdate, "News Date within the last 60 days or future")
	end
end
end
