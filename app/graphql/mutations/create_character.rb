class Mutations::CreateCharacter < GraphQL::Function
 argument :name, types.String
 argument :starred_quote, types.String
 argument :role_id, types.Int

 type Types::CharacterType

 def call(obj, args, context)
   Character.create(args.to_h)
 end
end