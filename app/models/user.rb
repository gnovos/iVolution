class User < ActiveRecord::Base
  include ModelUtil

  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :lockable, :token_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
