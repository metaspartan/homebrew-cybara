cask "cybara" do
  version "1.0.1588"
  on_arm { sha256 "db6d359af14c7593c9edcb37927284b0e942a5e5461c881eaf4ca3ac707ca663"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1588/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "f55d5780ed6fb185fb96cd003c0eebd0ee88c9fab5b76763583531b7eddad82d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1588/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
