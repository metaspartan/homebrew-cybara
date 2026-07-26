cask "cybara" do
  version "1.0.1936"
  on_arm { sha256 "bb46a4ad3fdc2b503826906d7dc201a13d712302a6087e25533efc9e756449bb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1936/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "b74801ffd6a783ee39f33a03769da945451a36da1aa06eb4c711c9ba7d4d1349"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1936/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
