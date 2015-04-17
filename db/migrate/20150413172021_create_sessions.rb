class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :user
      t.string :auth_token

      t.timestamps null: false
    end
  end
end
