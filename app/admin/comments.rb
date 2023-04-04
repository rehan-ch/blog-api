ActiveAdmin.register Comment, as: "ArticleComment" do
    permit_params :body, :user_id, :article_id
    index do
        selectable_column
        id_column
        column :body do |resource|
            link_to resource.body, admin_article_comment_path(resource)
        end
        column :user
        column :article
    end
    form do |f|
      f.inputs do
        f.input :body
        f.input :user_id, as: :select, collection: User.all.map { |u| [u.email, u.id] }
        f.input :article_id, as: :select, collection: Article.all.map { |a| [a.title, a.id] }
      end
      f.actions
    end
end