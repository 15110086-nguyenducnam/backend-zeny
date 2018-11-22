class AddMailToKhachhangs < ActiveRecord::Migration[5.2]
  def change
    add_column :khachhangs, :email, :string
    add_column :khachhangs, :sdt, :integer
    add_column :khachhangs, :dateofbirth, :date
    add_column :khachhangs, :diachi, :string
  end
end
