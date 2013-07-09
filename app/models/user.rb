class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body

  has_many :posts, dependent: :destroy
  
  has_many :relationships, 
    foreign_key: :follower_id,
		class_name: "Relationship",
		dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed

  has_many :follower_relationships,
    foreign_key: :followed_id,
    class_name: 'Relationship'
  has_many :followers, through: :follower_relationships

  def feed
    
    
    
  end

  def following?(other_user)
    relationships.find_by_followed_id(other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    relationships.find_by_followed_id(other_user.id).destroy
  end

end
