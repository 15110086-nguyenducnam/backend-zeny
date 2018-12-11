module TotalProduct
  class CountProduct
    def initialize
      
    end
    
    def call
      sql = <<-SQL
      (
        SELECT   cungcap.id, chitiet.tongban, cungcap.tongmua
        FROM (	
          SELECT chitiethdmuahangs.sanpham_id as id, sum(chitiethdmuahangs.soluong) as tongban
          FROM chitiethdmuahangs
          GROUP BY chitiethdmuahangs.sanpham_id) as chitiet
        RIGHT JOIN ( 
          SELECT chitiethdccs.sanpham_id as id, sum(chitiethdccs.soluong) as tongmua
          FROM chitiethdccs
          GROUP BY chitiethdccs.sanpham_id) as cungcap ON cungcap.id = chitiet.id
      )
      SQL
      ActiveRecord::Base.connection.execute(sql).to_a
    end
    
  end
end