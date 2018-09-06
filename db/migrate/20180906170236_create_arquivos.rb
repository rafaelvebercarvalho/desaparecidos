class CreateArquivos < ActiveRecord::Migration[5.2]
  def change
    create_table :arquivos do |t|
      t.integer :table_id
      t.string :table_type
      t.binary :imagem
      t.references :usuarios, foreign_key: true

      t.timestamps
    end
  end
end
