Jenkins::Plugin::Specification.new do |plugin|
  plugin.name = "ruby-rsa"
  plugin.display_name = "Ruby RSA Plugin"
  plugin.version = '0.0.6'
  plugin.description = 'Ruby RSA test plugin to illustrate NoSuchMethodError'

  # You should create a wiki-page for your plugin when you publish it, see
  # https://wiki.jenkins-ci.org/display/JENKINS/Hosting+Plugins#HostingPlugins-AddingaWikipage
  # This line makes sure it's listed in your POM.
  plugin.url = 'https://wiki.jenkins-ci.org/display/JENKINS/Ruby+Rsa+Plugin'

  # The first argument is your user name for jenkins-ci.org.
  plugin.developed_by "odom", "Tommy Odom <odom@finelineprototyping.com>"

  # This specifies where your code is hosted.
  # Alternatives include:
  #  :github => 'myuser/ruby-rsa-plugin' (without myuser it defaults to jenkinsci)
  #  :git => 'git://repo.or.cz/ruby-rsa-plugin.git'
  #  :svn => 'https://svn.jenkins-ci.org/trunk/hudson/plugins/ruby-rsa-plugin'
  plugin.uses_repository :github => "tpodom/jenkins-rsa-test"

  # This is a required dependency for every ruby plugin.
  plugin.depends_on 'ruby-runtime', '0.10'

  # This is a sample dependency for a Jenkins plugin, 'git'.
  #plugin.depends_on 'git', '1.1.11'
end
