cask "cybara" do
  version "1.0.2341"
  on_arm { sha256 "1e9283ba809dcf9398e0beee981199da13e14f1b2e13e6769e30f6944841f944"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2341/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "888115f737c17964ca3c3fd1434612eede73e2431c2d005a113e5c15c8b5bae8"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2341/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
