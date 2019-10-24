class CreatePessoas < ActiveRecord::Migration[5.1]
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.string :identificador
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :senha
      t.string :cargo
      t.integer :tipo
      t.integer :inativo

      t.timestamps
    end
  end
end
