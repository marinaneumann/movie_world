require 'rails_helper'
describe Movie do
  it{ should validate_presence_of :name}
  it{ should validate_presence_of :user_id}
end