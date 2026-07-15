cask "cybara" do
  version "1.0.1617"
  on_arm { sha256 "26fab789241f2a0d9b783932d2f397da3b119a3b084939f182d59d0c42725d81"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1617/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "71b3b4d7cfb1a67ed202be976a54e640319a2465d3d1471c28523c826b9d38fb"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1617/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
