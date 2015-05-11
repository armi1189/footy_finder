class Game < ActiveRecord::Base

  has_many :joins,
      -> { extending WithUserAssociationExtension },
      dependent: :restrict_with_exception

  belongs_to :user
  has_many :users

  def has_been_joined?(user)
    joined_by(user).length > 0
  end

  def joined_by(user)
    (joins&user.joins)    
  end

  def is_full?
    joins.length >= 10
  end

  def is_created_by(current_user)
    user == current_user
  end
end
