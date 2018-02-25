require 'rails_helper'
require 'factories/users'
require 'factories/news'


RSpec.describe "submits/new.html.haml", type: :feature do
  let(:user) {create(:user)}
  let!(:news) {build(:news)}
  before { sign_in user }

  it "should render an error if title is missing" do
    visit new_submit_path()
    fill_in("text", with: news.description)
    click_button("submit")
    expect(page).to have_content("You're missing a title. Fill it and try again.")
  end

  it "should render an error if both url and description is filled" do
    visit new_submit_path()
    fill_in("title", with: news.title)
    fill_in("text", with: news.description)
    fill_in("url", with: news.url)
    click_button("submit")
    expect(page).to have_content("You can't have both url and description filled. Read more in the bottom of the page.")
  end

  it "should have fields for title, description and url and button" do
    visit new_submit_path()
    expect(page).to have_css("[name='content[title]']")
    expect(page).to have_css("[name='content[description]']")
    expect(page).to have_css("[name='content[url]']")
    expect(page).to have_css("[type='submit']")
  end


end
