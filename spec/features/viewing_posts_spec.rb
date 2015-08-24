require 'spec_helper'
require 'rails_helper'

feature 'viewing individual posts' do
  scenario 'can click and view a post' do
    user = create :user
    sign_in_with user
    post = create( :post, user: user )
    visit '/'
    find(:xpath, "//a[contains(@href,'posts/1')]").click
    expect(page.current_path).to eq(post_path(post))
  end
end
