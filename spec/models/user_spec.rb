require 'spec_helper'

describe User do
  fields = %i[email crypted_password salt]
  include_examples "has fields", fields
end
