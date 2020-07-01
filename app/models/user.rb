class User < ApplicationRecord
  devise  :database_authenticatable, 
          :registerable,
          :recoverable, 
          :rememberable, 
          :validatable,
          :timeoutable,
          :lockable,
          :confirmable,
          :campaignable
end
