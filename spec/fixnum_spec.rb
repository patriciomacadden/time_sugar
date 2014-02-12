require 'minitest_helper'

describe Fixnum do
  describe '#second(s)' do
    it 'must return self expressed in seconds' do
      1.second.must_equal 1
      10.seconds.must_equal 10
    end
  end

  describe '#minute(s)' do
    it 'must return self expressed in minutes' do
      1.minute.must_equal 60.seconds
      10.minutes.must_equal 600.seconds
    end
  end

  describe '#hour(s)' do
    it 'must return self expressed in hours' do
      1.hour.must_equal 60.minutes
      10.hours.must_equal 600.minutes
    end
  end

  describe '#day(s)' do
    it 'must return self expressed in days' do
      1.day.must_equal 24.hours
      10.days.must_equal 240.hours
    end
  end

  describe '#week(s)' do
    it 'must return self expressed in weeks' do
      1.week.must_equal 7.days
      10.weeks.must_equal 70.days
    end
  end

  describe '#ago' do
    it 'must subtract seconds' do
      Time.stub :now, Time.at(1) do
        1.second.ago.must_equal Time.at 0
      end
    end

    it 'must subtract minutes' do
      Time.stub :now, Time.at(60) do
        1.minute.ago.must_equal Time.at 0
      end
    end

    it 'must subtract hours' do
      Time.stub :now, Time.at(3600) do
        1.hour.ago.must_equal Time.at 0
      end
    end

    it 'must subtract days' do
      Time.stub :now, Time.at(86400) do
        1.day.ago.must_equal Time.at 0
      end
    end

    it 'must subtract weeks' do
      Time.stub :now, Time.at(604800) do
        1.week.ago.must_equal Time.at 0
      end
    end
  end

  describe '#from_now' do
    it 'must add seconds' do
      Time.stub :now, Time.at(0) do
        1.second.from_now.must_equal Time.at 1
      end
    end

    it 'must add minutes' do
      Time.stub :now, Time.at(0) do
        1.minute.from_now.must_equal Time.at 60
      end
    end

    it 'must add hours' do
      Time.stub :now, Time.at(0) do
        1.hour.from_now.must_equal Time.at 3600
      end
    end

    it 'must add days' do
      Time.stub :now, Time.at(0) do
        1.day.from_now.must_equal Time.at 86400
      end
    end

    it 'must add weeks' do
      Time.stub :now, Time.at(0) do
        1.week.from_now.must_equal Time.at 604800
      end
    end
  end
end
