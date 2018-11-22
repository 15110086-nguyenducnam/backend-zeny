class AddNhanhieuToLoaisp < ActiveRecord::Migration[5.2]
  def change
    add_reference :loaisps, :nhanhieu, foreign_key: true
  end
end
