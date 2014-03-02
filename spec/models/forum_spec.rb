describe Forum do
  fields = %i[name description]
  include_examples "has fields", fields

  it { should have_many(:topics) }
end
