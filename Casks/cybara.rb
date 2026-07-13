cask "cybara" do
  version "1.0.1470"
  on_arm { sha256 "ce107e1938ca905af7f19ff3336a1e3061d7fd0672ebfc7b74af398e04c08de6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1470/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7ff9fe0f035a7644c0de0bd923c7e23a626e1360bcbf133ff8048341b9e9d00d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1470/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
