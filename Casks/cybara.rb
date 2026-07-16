cask "cybara" do
  version "1.0.1695"
  on_arm { sha256 "63079d583e927771300f1b6bbd673b553c3a9ca1622402541c3d44e272f90702"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1695/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "574c156ae593020957ec1ce205989fab0f357340e02d3d7e7c568a014bbf7745"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1695/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
