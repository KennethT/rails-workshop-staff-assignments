class Person < ActiveRecord::Base

validates :last_name, presence: true

validates :first_name, presence: true, unless: ->(person){person.title.present?}
validates :title, presence: true, unless: ->(person){person.first_name.present?}

end
