require 'spec_helper'

feature 'viewing individual posts' do
  background do
    user = create :user
    post = create :post

    sign_in_with user
  end

  scenario 'can click and view a post' do
    post = create(:post)

    visit '/'
    find(:xpath, "//a[contains(@href,'posts/2')]").click
    expect(page.current_path).to eq(post_path(post))
  end
end
