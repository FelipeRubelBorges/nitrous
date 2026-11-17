class Materium < ApplicationRecord
  has_many :horarios, foreign_key: :id_materia
end
