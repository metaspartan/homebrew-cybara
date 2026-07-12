cask "cybara" do
  version "1.0.1428"
  on_arm { sha256 "79d9a9351fba3500fe609469103064635d37111bad9ad8a496bd91861c46a834"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1428/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ac99efca77516da93545c58abf66cae2f9b05662910f4df89013a0d1a92057de"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1428/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
