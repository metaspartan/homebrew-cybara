cask "cybara" do
  version "1.0.2310"
  on_arm { sha256 "646162eeaa21e742775d21caf3785a86be2bd02e02fd8a44172d3ba590dc8197"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2310/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2e87c6ab16c5db97e3e0ea7734b255954d0c17b9a7a955f5a4d63f1c826b8f73"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2310/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
