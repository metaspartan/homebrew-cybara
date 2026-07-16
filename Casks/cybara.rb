cask "cybara" do
  version "1.0.1662"
  on_arm { sha256 "57c7107a3dbdd9639900eb2c16c457af5b6b0c11b97a49586bad063d8e729972"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1662/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "60c67891443a30c33e539fe2fdc05f9390dbcdfb4439903d7588f1f36f3f1d63"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1662/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
