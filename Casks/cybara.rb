cask "cybara" do
  version "1.0.1624"
  on_arm { sha256 "bc1978b13a18e73ca6423f4ee8d57b7301116fa7417c5b429aec7c68ebadbdf1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1624/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "70c6abd999c16b1f46654f0467f98e51068584d245d3eaddc2446ff89df989a2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1624/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
