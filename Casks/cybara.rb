cask "cybara" do
  version "1.0.2083"
  on_arm { sha256 "f1966148538fd597b3404bc2845c8d84015b45ab6f8b174901fe985f51ab1b87"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2083/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "b5d714591b4e9cb5b1d26651503e9af7a391e81feb16d884c5a64d4a9594aa8e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2083/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
