# frozen_string_literal: true

class Admins::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
  # def create
    # super
  # end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  # def update
  #   super
  # end

  protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  #   redirect_to "facebook.com"
  #   # render "shared/resetpassword"
  # end


  # # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   # super(resource_name)
  #   # static_pages_reset_password_path and return
  #   # "/static_pages/reset_password"
  # end

end
