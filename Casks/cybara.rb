cask "cybara" do
  version "1.0.2220"
  on_arm { sha256 "fbbcdc8bbf5ea647d3d495f0e0ba6e05cd971aae672f7ad89245ad75e5570197"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2220/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "20b10218fb39867f82d59de99beded755fe2641435d4c5a79becd2d7151bd518"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2220/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
