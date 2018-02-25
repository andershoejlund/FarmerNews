require 'rails_helper'
require 'factories/users'

RSpec.describe "submits/new.html.haml", type: :feature do
  let(:user) {create(:user)}

  it "should have fields for title, description and url" do
    sign_in user
    visit new_submit_path()
    within('#form') do |form|
      expect(form).to have_css('[name=content[title]]')
      expect(form).to have_css('[name=content[description]]')
      expect(form).to have_css('[name=content[url]]')
    end
  end
end
