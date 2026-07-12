cask "cybara" do
  version "1.0.1376"
  on_arm { sha256 "7863b9e9912f45cda3cd644c13720fb18b970cf3edefa7e9eab25d179d8885c7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1376/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "394621d6930fd328d538ff635ee3a56e82426bda893d763ec7649bc55985ee5c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1376/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
