class User < ApplicationRecord
	 has_many :statuses
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
        #validations
        validates :first_name, presence: true
        validates :last_name, presence: true
        validates :profile_name, presence: true, 
        			uniqueness: true,
        			format: {
        				with: /^[a-zA-Z0-9_-]+$/,
                :multiline => true,
        				message: 'must be formatted correctly.'
        			} 
end
