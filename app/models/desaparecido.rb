class Desaparecido < ApplicationRecord
  belongs_to :usuario
  has_many :arquivos, as: 'table'
  enum sexo: {masculino: 0, feminino: 1}
end
