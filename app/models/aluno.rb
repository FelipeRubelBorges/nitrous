class Aluno < ApplicationRecord
  has_many :horarios, foreign_key: :id_aluno
end
