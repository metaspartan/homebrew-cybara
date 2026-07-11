cask "cybara" do
  version "1.0.1355"
  on_arm { sha256 "bf5097a2de496b93703468156bae615d6572931b0fb3337ffebf2d012056ca05"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1355/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "564131383565f24b8bef38ea0ebaa8f60fd3c0a4fa8c5860aa9c17c9b3f04988"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1355/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
