Types::CharacterListType = GraphQL::ObjectType.define do
 name "CharacterListType" 

  resolve ->(element, args, context){
    element
  }
end