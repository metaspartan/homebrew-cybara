cask "cybara" do
  version "1.0.1562"
  on_arm { sha256 "2d0fe11c7134ff378e712a4208cfaf5e491fc0edbe2aabacbdafca62c77cd35b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1562/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "306af19f14fb6ff319b56c9cfcc3f2ec1b7e4b82aaa1f40d3f5ff2dae0ea4147"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1562/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
