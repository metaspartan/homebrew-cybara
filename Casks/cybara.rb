cask "cybara" do
  version "1.0.1610"
  on_arm { sha256 "a40d315c7e90d69b579319f3817191b0f3584d52f06b637a74cf98423fe5c406"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1610/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d651ca553ce7d9f50d4fe0703c0c715450435e4cabf0c5961468d0fc299e36ad"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1610/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
