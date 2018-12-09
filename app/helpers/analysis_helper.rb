module AnalysisHelper

  def name_analysis(user)
    Sanpham.find(user).tensp
  end

  def total_product(key)
    Chitiethdmuahang.where(sanpham_id: key).sum(:soluong)
  end

  def total_buy(key)
    Chitiethdcc.where(sanpham_id: key).sum(:soluong)
  end

  
end
