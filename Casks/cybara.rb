cask "cybara" do
  version "1.0.1412"
  on_arm { sha256 "756eda95fbc476acbc27a3486fef111bd667cea539878c9199077b2ea0addbf1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1412/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "1d9dd3ea7a97fb41e1ec989d5cb471c8e2dfc7ac9920ae67747c6c608be82c36"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1412/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
