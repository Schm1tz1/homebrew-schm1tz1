cask "confluent" do
  version "7.5.2"
  sha256 "e2cb7c25249c3ccc7d088db375f6fb8a700fe7a63366aaa582134ad634db408b"

  url "https://packages.confluent.io/archive/7.5/confluent-7.5.2.tar.gz",
    verified: "packages.confluent.io/archive/"
  name "Confluent"
  desc "Confluent Platform"
  homepage "https://docs.confluent.io/platform/current/overview.html"

  livecheck do
    url "https://packages.confluent.io/archive/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  # postflight do
  #   system_command 'echo',
  #     args: ['export CONFLUENT_PLATFORM=', "#{appdir}", ">>~/.zshrc"],
  #     sudo: false
  # end

end
