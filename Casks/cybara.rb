cask "cybara" do
  version "1.0.1644"
  on_arm { sha256 "4ec4547071ae34258a4e6c08296a68b862d3ce9ab11b48748759f69d370ab47d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1644/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "44a77660413e29fd4df6067d3e4a08c4982982fe09ee0e39d96b648889496e85"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1644/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
