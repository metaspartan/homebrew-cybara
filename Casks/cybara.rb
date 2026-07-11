cask "cybara" do
  version "1.0.1279"
  on_arm { sha256 "69a7f1fb04e5ca7345f1b6d942094ea747dddb48a12eff11bae2fc2d09578e07"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1279/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9a00636d105329181cab3234c7dbb45d0e8c9abff5cae57d70e5654e9a6cb3ef"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1279/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
