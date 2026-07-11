cask "cybara" do
  version "1.0.1307"
  on_arm { sha256 "b74c2cd33fc3726de37495b583610195a871b1c4695d9de262cc43b25b033002"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1307/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3f21d37c5d0b379f089974a01acda460b2428e117b3a5d68a5778510ae420f0e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1307/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
