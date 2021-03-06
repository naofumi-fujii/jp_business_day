# frozen_string_literal: true

require_relative "jp_business_day/version"
require "date"
require "holiday_japan"

module JpBusinessDay
  class Error < StandardError; end

  # Your code goes here...
  #
  class << self
    def first_day_of_this_month(now = Time.now)
      Date.civil(now.year, now.month, 1)
    end

    def last_day_of_this_month(now = Time.now)
      Date.civil(now.year, now.month, -1)
    end

    # returns true/false
    def last_business_day_of_this_month?(date = Date.today)
      business_days(date).last == date
    end

    def last_business_day_of_this_month(date = Date.today)
      business_days(date).last
    end

    def first_business_day_of_this_month(date = Date.today)
      business_days(date).first
    end

    private

    def business_days(current = Time.now)
      return (first_day_of_this_month(current)..last_day_of_this_month(current)).to_a.
               reject { |date| date.sunday? || date.saturday? }.
               group_by { |date| holiday?(date) }[false]
    end

    def holiday?(date)
      HolidayJapan.check(date)
    end
  end
end
