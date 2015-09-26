class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {customer: 0,
              editor: 1,
              director: 2,
              admin: 9}

  has_many :questions
  has_many :answers

  def admin?
    self.role == 'admin'
  end
end
