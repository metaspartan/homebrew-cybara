cask "cybara" do
  version "1.0.2419"
  on_arm { sha256 "8700d6bdb781f1fb27eaa0262407d32a691e5ad0999134b2eb4aa4ae07f362e1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2419/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "c439ccf189a24a176a4a8ddd0ec4750b69e9b9bb2335a66b19830350ec6676f7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2419/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
