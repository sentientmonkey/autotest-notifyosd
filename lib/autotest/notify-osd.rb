# -*- ruby -*-

module Autotest::NotifyOSD

  def self.notify title, msg, urg = 'normal', img = nil
    msg += " in #{Dir.pwd.split(/\//).last(3).join("/")}"
    msg += " at #{Time.now.strftime('%Y-%m-%d %H:%M:%S')}"
    # TODO: parameterize default image
    img ||= '/usr/share/icons/Human/scalable/status/dialog-info.svg'
    cmd = "notify-send -i #{img} -u #{urg} '#{title}' '#{msg}'"
    system cmd
    nil
  end

  Autotest.add_hook :initialize do  |at|
    notify "Autotest running", "Started"
  end

  Autotest.add_hook :run_command do  |at|
    notify "Tests running", "Testing", 'normal', "/usr/share/icons/Human/scalable/status/dialog-warning.svg" if at.tainted
  end

  Autotest.add_hook :red do |at|
    notify "Tests Failed", "#{at.files_to_test.size} tests failed", "critical", "/usr/share/icons/Human/scalable/status/dialog-error.svg"
  end

  Autotest.add_hook :green do |at|
    notify "Tests Passed", "Tests passed", "low" if at.tainted
  end

  Autotest.add_hook :all_good do |at|
    notify "All Tests Passed", "All tests passed", "low" if at.tainted
  end

  Autotest.add_hook :quit do |at|
    notify "autotest exiting", "Exiting"
  end
end
