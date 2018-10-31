class AddTenhdccToHopdongccs < ActiveRecord::Migration[5.2]
  def change
    add_column :hopdongccs, :tenhdcc, :string
  end
end
