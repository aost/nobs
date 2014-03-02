describe Topic do
  fields = %i[name forum_id]
  include_examples "has fields", fields

  it { should belong_to(:user) }
  it { should belong_to(:forum) }
  it { should have_many(:posts) }
end
