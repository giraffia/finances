require 'rails_helper'

RSpec.describe "expenses/show", type: :view do
  before(:each) do
    @expense = assign(:expense, Expense.create!(
      :category => nil,
      :title => "Title",
      :amount => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2/)
  end
end
