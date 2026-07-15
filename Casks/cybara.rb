cask "cybara" do
  version "1.0.1591"
  on_arm { sha256 "1c5eeba0dda6fa5a0458630533e78abeccab89615a42ac32f75d26e3485aa3d3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1591/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4712b5b3730b3836ffadd2ac2668d3dca22f20fb9fc7ee0d31b09c0e3ac2bda0"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1591/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
