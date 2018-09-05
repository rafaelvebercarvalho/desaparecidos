class CreateDesaparecidos < ActiveRecord::Migration[5.2]
  def change
    create_table :desaparecidos do |t|
      t.references :usuario, foreign_key: true
      t.string :nome
      t.integer :idade
      t.integer :sexo
      t.timestamp :data_nascimento
      t.string :mae
      t.string :pai

      t.timestamps
    end
  end
end
