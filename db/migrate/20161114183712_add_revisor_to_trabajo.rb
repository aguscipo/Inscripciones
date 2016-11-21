class AddRevisorToTrabajo < ActiveRecord::Migration
  def change
    add_reference :trabajos, :revisor, index: true, foreign_key: true
  end
end
