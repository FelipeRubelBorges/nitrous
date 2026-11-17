class Horario < ApplicationRecord
  belongs_to :professor, foreign_key: :id_professor
  belongs_to :materium, foreign_key: :id_materia
  belongs_to :aluno, foreign_key: :id_aluno
end
