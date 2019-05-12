Types::RoleType = GraphQL::ObjectType.define do
 name "RoleType"

 field :id, types.ID
 field :name, types.String
 field :description, types.String
end