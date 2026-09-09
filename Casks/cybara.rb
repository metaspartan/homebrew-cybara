cask "cybara" do
  version "1.0.2332"
  on_arm { sha256 "a8c19b6f3e73b2d43c9944ed685fa47d87659d6acbb5ef2ab330fb859c599e71"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2332/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "734938f724d32e009ac2da4888af1ec07543aded995894ea49ef8f900b381300"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2332/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
