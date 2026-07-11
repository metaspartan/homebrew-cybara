cask "cybara" do
  version "1.0.1231"
  on_arm { sha256 "9a9e2d9d0330c5314b71d65d1ea767611b248e1b76a44b7176d1e6822ebbb4e8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1231/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "42159a79bddb2a32f0731640a21236d1d065cc7ac7d6b4ce6d68a0e73e067f08"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1231/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
