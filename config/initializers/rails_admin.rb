RailsAdmin.config do |config|

  ### Popular gems integration

  # # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)
  config.navigation_static_label = "My Links"
  config.navigation_static_links = {
    'Google' => 'http://www.google.com'
  }

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete do
      except ["Admin"]
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  # config.excluded_models << Admin

  config.main_app_name = ["Zeny", "Admin"]
  config.label_methods.unshift(:display_name)
  config.model 'Chitiethdccs' do
    label_plural "Chi tiết hợp đồng cung cấp"
  end

  config.model 'Admin' do
    visible false
    field :email do
      read_only true
    end
    field :password
    field :password_confirmation
    field :created_at do
      read_only true
    end
    field :updated_at do
      read_only true
    end
    # field :conf
  end
  config.model 'Photo' do
    visible false
  end
end
