module BackEnd::Helpers::APIHelper
  def user_authenticate!
    token = request.headers["Access-Token"]
    @api_key = ApiKey.find_by_token(token)
    
    error!({message: "Invalid asset token"}, 403) unless @api_key
  end

  def current_user
    @current_user ||= @api_key.user
  end

  def logout
    @api_key.destroy
  end

  def set_item(id)
    @item = Item.find_by_id(id)
  end
end