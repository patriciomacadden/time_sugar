require 'bundler/setup'

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'mocoso'
require 'oktobertest'
require 'time_sugar'

class Oktobertest::Test
  include Mocoso
end

scope TimeSugar do
  test 'defines the VERSION constant' do
    assert defined? TimeSugar::VERSION
  end

  test 'defines the SECOND constant' do
    assert TimeSugar::SECOND
    assert TimeSugar::SECOND == 1
  end

  test 'defines the MINUTE constant' do
    assert defined? TimeSugar::MINUTE
    assert TimeSugar::MINUTE == 60
  end

  test 'defines the HOUR constant' do
    assert defined? TimeSugar::HOUR
    assert TimeSugar::HOUR == 3600
  end

  test 'defines the DAY constant' do
    assert defined? TimeSugar::DAY
    assert TimeSugar::DAY == 86400
  end

  test 'defines the WEEK constant' do
    assert defined? TimeSugar::WEEK
    assert TimeSugar::WEEK == 604800
  end
end

scope Fixnum do
  scope '#second(s)' do
    test 'returns self expressed in seconds' do
      assert 1.second == 1
      assert 10.seconds == 10
    end
  end

  scope '#minute(s)' do
    test 'returns self expressed in minutes' do
      assert 1.minute == 60.seconds
      assert 10.minutes == 600.seconds
    end
  end

  scope '#hour(s)' do
    test 'returns self expressed in hours' do
      assert 1.hour == 60.minutes
      assert 10.hours == 600.minutes
    end
  end

  scope '#day(s)' do
    test 'must return self expressed in days' do
      assert 1.day == 24.hours
      assert 10.days == 240.hours
    end
  end

  scope '#week(s)' do
    test 'must return self expressed in weeks' do
      assert 1.week == 7.days
      assert 10.weeks == 70.days
    end
  end

  scope '#ago' do
    test 'must subtract seconds' do
      stub Time, :now, Time.at(1) do
        assert 1.second.ago == Time.at(0)
      end
    end

    test 'must subtract minutes' do
      stub Time, :now, Time.at(60) do
        assert 1.minute.ago == Time.at(0)
      end
    end

    test 'must subtract hours' do
      stub Time, :now, Time.at(3600) do
        assert 1.hour.ago == Time.at(0)
      end
    end

    test 'must subtract days' do
      stub Time, :now, Time.at(86400) do
        assert 1.day.ago == Time.at(0)
      end
    end

    test 'must subtract weeks' do
      stub Time, :now, Time.at(604800) do
        assert 1.week.ago == Time.at(0)
      end
    end
  end

  scope '#from_now' do
    test 'must add seconds' do
      stub Time, :now, Time.at(0) do
        assert 1.second.from_now == Time.at(1)
      end
    end

    test 'must add minutes' do
      stub Time, :now, Time.at(0) do
        assert 1.minute.from_now == Time.at(60)
      end
    end

    test 'must add hours' do
      stub Time, :now, Time.at(0) do
        assert 1.hour.from_now == Time.at(3600)
      end
    end

    test 'must add days' do
      stub Time, :now, Time.at(0) do
        assert 1.day.from_now == Time.at(86400)
      end
    end

    test 'must add weeks' do
      stub Time, :now, Time.at(0) do
        assert 1.week.from_now == Time.at(604800)
      end
    end
  end
end
