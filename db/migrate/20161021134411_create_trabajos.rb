class CreateTrabajos < ActiveRecord::Migration
  def change
    create_table :trabajos do |t|
      t.integer :nro_trabajo, :unique => true
      t.string :titulo
      t.string :autor
      t.string :autores_secundarios
      t.text :resumen
      t.string :correo
      t.string :correo_gmail
      t.string :tipo_presentacion
      t.string :tema
      t.string :informacion_exposicion
      t.string :estado
      t.timestamps null: false
    end
  end
end
