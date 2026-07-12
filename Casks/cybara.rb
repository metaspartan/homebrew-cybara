cask "cybara" do
  version "1.0.1360"
  on_arm { sha256 "1149263bd56abf5b61408676d990c5a5299d3bbd0aa3bba1020c7228cc8d1587"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1360/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "007ae7da3783179d3174a642f8d01392f12427fe27fc4c831a446f02a19b91f7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1360/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
