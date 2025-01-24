class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Enums
  enum role: { user: 0, admin: 1 }

  # Associations

  # Validations
  validates :first_name, :last_name,
            presence: true,
            length: { minimum: 2 },
            format: { with: /\A[a-zA-Z\-']+\z/, message: 'only allows letters' }

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  # Methods
  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def not_started_courses
    enrolled_courses.where(enrollments: { status: :not_started })
  end

  def started_courses
    enrolled_courses.where(enrollments: { status: :started })
  end

  def completed_courses
    enrolled_courses.where(enrollments: { status: :completed })
  end
end
