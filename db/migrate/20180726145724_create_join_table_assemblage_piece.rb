class CreateJoinTableAssemblagePiece < ActiveRecord::Migration[5.2]
  def change
  	create_join_table :assemblages, :pieces do |t|
    	t.index [:assemblage_id, :piece_id]
		t.index [:piece_id, :assemblage_id]
    end
  end
end
