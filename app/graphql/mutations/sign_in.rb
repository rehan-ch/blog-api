module Mutations
    class SignIn < BaseMutation
        arugument :email, String, required: true
        arugument :password, String, required: true
        field :user, Types::UserType, null: true
        field :access_token, String, null: true

        def resolve(**kwargs)
            
        end

    end
end