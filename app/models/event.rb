class Event < ApplicationRecord
	acts_as_schedulable :schedule
end