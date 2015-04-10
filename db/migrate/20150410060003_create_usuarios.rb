class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :authtoken
      t.string :nombre
      t.string :apellidos
      t.string :nombre_usuario
      t.string :contrasenna

      t.timestamps null: false
    end
  end
end
