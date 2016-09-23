class HorarioSerializer < ActiveModel::Serializer
  attributes :id, :id_aluno, :id_professor, :id_materia, :horario
end
