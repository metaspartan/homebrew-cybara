cask "cybara" do
  version "1.0.1431"
  on_arm { sha256 "6adbd2d345a8eee7effc5a25fa9d0b45c50791da8e89ac51f5b7e7d21d3b1b10"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1431/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "886d87338c245e83a5da540849b22ec4aac801c6e660d33d8754153e89280a1e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1431/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
