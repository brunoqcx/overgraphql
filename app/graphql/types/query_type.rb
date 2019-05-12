Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :character, Types::CharacterType do
    
    argument :id, types.ID
    description "Character identification"
    resolve ->(obj, args, ctx) {
      Character.find(args[:id])
    }
  end

  field :allCharacters, types[Types::CharacterType] do
    
    description 'A list of all characters'
    resolve -> (obj, args, ctx) {
      Character.all
    }
  end
 
end
