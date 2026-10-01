cask "cybara" do
  version "1.0.2472"
  on_arm { sha256 "09d531e4cb3a625293542947f8e48479bf9263b6a8133820380be4f185fb7d63"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2472/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2ae339aada2fc4e22d31832c4c24348b93bf62fe129ad5918f1f59fbc61df027"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2472/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
