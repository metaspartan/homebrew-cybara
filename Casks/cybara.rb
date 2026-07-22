cask "cybara" do
  version "1.0.1865"
  on_arm { sha256 "525f2ea16bb319636909597b202cfd09abb930029dc060fe338fabff31e640be"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1865/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "3850389603134275ace7d78113bf9324e0351c415f5411a9ea9c4773a8f03ee1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1865/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
