cask "cybara" do
  version "1.0.2401"
  on_arm { sha256 "2e46ef072f71d2c47d43ba341a1bfe9d130a09925bddffe5320a40a23f4b5c6a"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2401/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "74625edb9f916478024547fdf52118fc73e9a5a474294e59c86e89097c085f93"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2401/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
