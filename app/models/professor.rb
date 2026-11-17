class Professor < ApplicationRecord
  has_many :horarios, foreign_key: :id_professor

end
