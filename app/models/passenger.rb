class Passenger < ApplicationRecord

  scope :alive, -> { where(survived: true) }
  scope :dead, -> { where(survived: false) }

  enum sex: {
    male: 0,
    female: 1,
    other: 2,
  }

  enum pclass: {
    first_class: 1,
    second_class: 2,
    third_class: 3,
  }
end
