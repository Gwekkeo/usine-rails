class CreateAssemblages < ActiveRecord::Migration[5.2]
  def change
    create_table :assemblages do |t|
    	t.string :name

      t.timestamps
    end
  end
end
