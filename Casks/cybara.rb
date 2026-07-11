cask "cybara" do
  version "1.0.1258"
  on_arm { sha256 "1c798a4a29455b461a6ebd3e02fb2284bf7c29485dd24aa372ec479b40d23d8d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1258/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "eea2508e15ac229c93f31c1292cd745fc6eb14ca652c58579d5880aedd805b65"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1258/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
