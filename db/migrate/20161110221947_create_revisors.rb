class CreateRevisors < ActiveRecord::Migration
  def change
    create_table :revisors do |t|
      t.string :nombre
      t.string :apellido
      t.string :usuario
      t.string :password

      t.timestamps null: false
    end
  end
end
