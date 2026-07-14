cask "cybara" do
  version "1.0.1484"
  on_arm { sha256 "7d9a2be5d2ca4e084623ab316844dfaeb9e3fd9d3bd85675a465ed18c78f5f90"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1484/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "abddc815a57b271b1a7f0ad92dd0a03eea5c25d3708202b43b67cefeaa13cd6a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1484/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
