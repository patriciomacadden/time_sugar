require 'minitest_helper'

describe TimeSugar do
  it 'must define the VERSION constant' do
    TimeSugar::VERSION.wont_be_nil
  end

  it 'must define the SECOND constant' do
    TimeSugar::SECOND.wont_be_nil
    TimeSugar::SECOND.must_equal 1
  end

  it 'must define the MINUTE constant' do
    TimeSugar::MINUTE.wont_be_nil
    TimeSugar::MINUTE.must_equal 60
  end

  it 'must define the HOUR constant' do
    TimeSugar::HOUR.wont_be_nil
    TimeSugar::HOUR.must_equal 3600
  end

  it 'must define the DAY constant' do
    TimeSugar::DAY.wont_be_nil
    TimeSugar::DAY.must_equal 86400
  end

  it 'must define the WEEK constant' do
    TimeSugar::WEEK.wont_be_nil
    TimeSugar::WEEK.must_equal 604800
  end
end
