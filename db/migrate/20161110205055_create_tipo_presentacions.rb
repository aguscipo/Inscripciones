class CreateTipoPresentacions < ActiveRecord::Migration
  def change
    create_table :tipo_presentacions do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
