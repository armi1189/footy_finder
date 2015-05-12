module WithGameAssociationExtension
  def create_with_game(attributes = {}, game)
   attributes[:game] ||= game
   create(attributes)
  end

  def create_with_game!(attributes = {}, game)
    attributes[:game] ||= game
    create!(attributes)
  end

  def build_with_game(attributes = {}, game)
    attributes[:game] ||= game
    build(attributes)
  end
end