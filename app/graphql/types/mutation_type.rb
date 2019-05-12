Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :createCharacter, function: Mutations::CreateCharacter.new
end