
class ReadkeyBuilder < Jenkins::Tasks::Builder

    display_name "Read RSA private key"

    # Invoked with the form parameters when this extension point
    # is created from a configuration screen.
    def initialize(attrs = {})

    end

    ##
    # Runs before the build begins
    #
    # @param [Jenkins::Model::Build] build the build which will begin
    # @param [Jenkins::Model::Listener] listener the listener for this build.
    def prebuild(build, listener)
    end

    ##
    # Runs the step over the given build and reports the progress to the listener.
    #
    # @param [Jenkins::Model::Build] build on which to run this step
    # @param [Jenkins::Launcher] launcher the launcher that can run code on the node running this build
    # @param [Jenkins::Model::Listener] listener the listener for this build.
    def perform(build, launcher, listener)
      require 'openssl'
      OpenSSL::PKey::RSA.new(File.read(File.join(build.workspace.to_s, 'private.key')))
    end

end