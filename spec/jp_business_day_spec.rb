# frozen_string_literal: true

RSpec.describe JpBusinessDay do
  it "has a version number" do
    expect(JpBusinessDay::VERSION).not_to be nil
  end

  example ".first_day_of_this_month" do
    date = Date.parse("1993-02-24")
    expect(JpBusinessDay.first_day_of_this_month(date)).to eq Date.parse("1993-02-01")
  end

  example ".last_day_of_this_month" do
    date = Date.parse("1993-02-24")
    expect(JpBusinessDay.last_day_of_this_month(date)).to eq Date.parse("1993-02-28")
  end

  example ".last_business_day_of_this_month?" do
    date = Date.parse("2021-10-21")
    expect(JpBusinessDay.last_business_day_of_this_month?(date)).to eq false

    date = Date.parse("2021-10-29")
    expect(JpBusinessDay.last_business_day_of_this_month?(date)).to eq true
  end
end
