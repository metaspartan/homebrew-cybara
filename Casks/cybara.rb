cask "cybara" do
  version "1.0.1538"
  on_arm { sha256 "5c9ddc4967008585941c0c2fa25e04bbb49ca491a82f280ae184858eb4d1f723"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1538/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "7f2aeca20f21bc79c5809c62a2319604e07dcc7b68bb68efd6db8b317b93be9e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1538/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
