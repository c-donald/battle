feature 'Testing infrastructure' do
  scenario 'displays "testing infrastructure working"' do 
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end 
end

feature 'players submit names in a form' do
  scenario 'players enter names in a form and then see their names on screen' do
    visit '/names'
    fill_in('player_one', with: 'Sam')
    fill_in('player_two', with: 'Courtenay')
    click_on('Submit')
    expect(page).to have_content "Sam vs. Courtenay"
  end
end