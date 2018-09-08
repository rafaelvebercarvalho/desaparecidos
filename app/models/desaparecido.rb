class Desaparecido < ApplicationRecord
  has_many :arquivos, as: 'table'
  enum sexo: {masculino: 0, feminino: 1}
end
