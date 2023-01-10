# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  description :string
#  done        :boolean
#  in_progress :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
class Todo < ApplicationRecord
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
