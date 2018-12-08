class AddTrangthaiToHopdongcungcaps < ActiveRecord::Migration[5.2]
  def change
    change_column :hopdongmuahangs, :trangthaihd, :integer, null: false, default: 0
  end
end
