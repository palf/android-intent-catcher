require 'calabash-android/cucumber'
require 'randroid'


module Randroid
  class SimpleDevice
    def initialize()
    end

    def install(path)
      p path
      `adb install #{path}`
    end

    def uninstall(package)
      `adb uninstall #{package}`
    end
  end
end


def reinstall_apps()
  device.uninstall('palf.intent.catcher.test')
  device.uninstall('palf.intent.catcher')

  test_path = ENV['TEST_APP_PATH']
  app_path = ENV['APP_PATH']

  device.install(test_path)
  device.install(app_path)
end


def device
  @device ||= Randroid::SimpleDevice.new()
end


reinstall_apps()
