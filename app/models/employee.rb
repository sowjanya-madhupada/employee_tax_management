class Employee < ApplicationRecord
	validates :employee_id, :first_name, :last_name, :email, :doj, :salary, :phone_numbers, presence: true
    validates :employee_id, uniqueness: true
    validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, uniqueness: { case_sensitive: false, message: "An employee already exists with this email." }
    validates :salary, numericality: {greater_than_or_equal_to: 0}
end
