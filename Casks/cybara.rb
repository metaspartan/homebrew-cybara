cask "cybara" do
  version "1.0.1652"
  on_arm { sha256 "f2f42783b579235f04ea1c0281086f8feecc42aaf66c42a7ddb2f2e5c5c1c86a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1652/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6fe1233b4f23561bdbef090ebc4f0622468f379c60875c5ba4bee404852a078e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1652/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
