class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :senha
      t.string :telefone
      t.string :email
      t.string :endereco

      t.timestamps
    end
  end
end
