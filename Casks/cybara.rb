cask "cybara" do
  version "1.0.2022"
  on_arm { sha256 "0deda136cff0aade23cae6143105d61143377c745959a3dda6f29a7fa718d4cf"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2022/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "c0e915b1c43a992a3dbc808288edf0ac1f30e4fe839edb0768a78df2cf306838"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2022/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
