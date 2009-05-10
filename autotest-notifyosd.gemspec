# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{autotest-notifyosd}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Scott Windsor"]
  s.date = %q{2009-05-09}
  s.default_executable = %q{enable-autotest-notifyosd}
  s.email = %q{swindsor@gmail.com}
  s.executables = ["enable-autotest-notifyosd"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "autotest-notifyosd.gemspec",
     "bin/enable-autotest-notifyosd",
     "lib/autotest-notifyosd.rb",
     "lib/autotest/notify-osd.rb",
     "test/autotest-notifyosd_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/sentientmonkey/autotest-notifyosd}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Provides autotest notifications for Ubuntu's NotifyOSD}
  s.test_files = [
    "test/autotest-notifyosd_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ZenTest>, [">= 4.0.0"])
    else
      s.add_dependency(%q<ZenTest>, [">= 4.0.0"])
    end
  else
    s.add_dependency(%q<ZenTest>, [">= 4.0.0"])
  end
end
