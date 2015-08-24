require 'rails_helper'

feature 'Can see a list of posts' do
  background do
    user = create :user
    post_one = create( :post, user: user, caption: "This is post one" )
    post_two = create( :post, user: user, caption: "This is the second post" )

    sign_in_with user
  end

  scenario 'lists all jobs' do
    visit '/'
    expect(page).to have_content("This is post one")
    expect(page).to have_content("This is the second post")
    expect(page).to have_css("img[src*='coffee']")
  end
end
