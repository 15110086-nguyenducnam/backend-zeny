class CreateNhanhieus < ActiveRecord::Migration[5.2]
  def change
    create_table :nhanhieus do |t|
      t.string :ten

      t.timestamps
    end
  end
end
