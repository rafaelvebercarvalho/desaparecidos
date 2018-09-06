class Arquivo < ApplicationRecord
  belongs_to :usuarios
  belongs_to :table, polymorphic: true
end
