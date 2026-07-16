cask "cybara" do
  version "1.0.1697"
  on_arm { sha256 "66c20f480bc2419677121e43374ab92d82c14a7da362476c2b5ed12faa57fa91"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1697/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "f4273716dec046db0d844af57bca9805572f6a8870ab7bafce7700c00e9b155d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1697/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
