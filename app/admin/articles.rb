ActiveAdmin.register Article do
  permit_params :title, :body, :user

  index do
    selectable_column
    id_column
    column :title
    column :body
    column :user
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :body
      f.input :user
    end
    f.actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :description, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :description, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
