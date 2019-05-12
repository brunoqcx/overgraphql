Types::CharacterType = GraphQL::ObjectType.define do
 name "CharacterType" 


 field :id, types.ID
 field :name, types.String
 field :age, types.String
 field :starred_quote, types.String


 field :role do

   type Types::RoleType

   description "Character Role"

   resolve ->(character, args, context){
     character.role
   }

 end
end