cask "cybara" do
  version "1.0.1547"
  on_arm { sha256 "32c265143c85ae2ceb4972d9eb06daa71d1393232e1f4cd47cae05108eb38acc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1547/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7552e1e331e858187f85699b09ae77b423fc8897859b124b8d0d34c489209342"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1547/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
