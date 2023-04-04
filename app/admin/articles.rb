ActiveAdmin.register Article do
  permit_params :title, :body, :user_id

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
      f.input :user_id, as: :select, collection: User.all.map { |u| [u.email, u.id] }
    end
    f.actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :body
      row :user
    end

    panel "Comments" do
      div do
        link_to "test", "#"
      end
      table_for resource.comments do |comment|
        column :id
        column :body
        column :created_at
      end
    end
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
