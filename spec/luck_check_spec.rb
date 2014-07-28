require ('rspec')
require ('luck_check')

describe('luck_check')  do
  it("splits a number into two halves and adds up each half") do
    luck_check(5436).should(eq("Lucky"))
  end
end
