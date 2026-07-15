cask "cybara" do
  version "1.0.1637"
  on_arm { sha256 "12b4e511215c6707bc3c7fbfeb5eee0c4ac04d898565ac6cb1b07af7b03e48cd"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1637/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "cd6240e2babc265859feee2d1dac9906093a1a05b290af7a0423a4dbf77c8c89"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1637/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
