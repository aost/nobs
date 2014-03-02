require 'spec_helper'

describe Post do
  fields = %i[content topic_id]
  include_examples "has fields", fields

  it { should belong_to(:topic) }
end
