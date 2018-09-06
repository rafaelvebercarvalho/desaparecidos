class Usuario < ApplicationRecord
  has_many :arquivos, as: 'table'
end
