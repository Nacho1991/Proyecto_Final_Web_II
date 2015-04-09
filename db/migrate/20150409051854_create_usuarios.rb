class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :Nombre
      t.string :Apellidos
      t.string :Nombre_Usuario
      t.string :contrasenna

      t.timestamps null: false
    end
  end
end
