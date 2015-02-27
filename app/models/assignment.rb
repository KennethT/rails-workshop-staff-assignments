class Assignment < ActiveRecord::Base

  belongs_to :person
  belongs_to :location

  validates :location_id, uniqueness: true, if: ->(assignment){person.assignments.find_by(location_id: location_id, role: role)}

end
