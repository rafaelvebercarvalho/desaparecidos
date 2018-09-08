class Arquivo < ApplicationRecord
  belongs_to :table, polymorphic: true
end
