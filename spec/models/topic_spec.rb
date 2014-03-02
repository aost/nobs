describe Topic do
  fields = %i[name forum_id]
  include_examples "has fields", fields

  it { should belong_to(:forum) }
end
