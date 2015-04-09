class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :Authtoken
      t.string :Nombre
      t.string :Descripciono
      t.string :Estado

      t.timestamps null: false
    end
  end
end
