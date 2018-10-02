class Event < ApplicationRecord
	acts_as_schedulable :schedule
	belongs_to :dance_type
	belongs_to :city

	validates :title, presence: true
	validates :description, presence: true
	validates :price, presence: true
	validates :start_time, presence: true
	validates :end_time, presence: true
	validates :location, presence: true
	validates :dance_type_id, presence: true
	validates :city_id, presence: true

	def date
		I18n.l(start_time, format: "%a. %-d %B %Y")
	end
end
