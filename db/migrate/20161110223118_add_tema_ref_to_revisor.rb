class AddTemaRefToRevisor < ActiveRecord::Migration
  def change
    add_reference :revisors, :tema, index: true, foreign_key: true
  end
end
