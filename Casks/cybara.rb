cask "cybara" do
  version "1.0.1294"
  on_arm { sha256 "abc5bbc7917e29b4b8376e2db2f6f6009d20b928d4ea4e2a55a075e49c2c4770"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1294/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "45346d36f71baa8f743a4b64d3b2ec53a6d359db30a43ab02dd20d428510547b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1294/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
