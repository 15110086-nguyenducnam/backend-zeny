class ChangeSetDefauleTrangThaiInHopdongccs < ActiveRecord::Migration[5.2]
  def change
    change_column :hopdongccs, :trangthaihd, :integer, null: false, default: 0
   
    #Ex:- :default =>''
  end
end
