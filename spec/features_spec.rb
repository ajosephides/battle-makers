describe 'Battle' do
  it 'Battle' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
