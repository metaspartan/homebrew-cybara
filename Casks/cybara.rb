cask "cybara" do
  version "1.0.1425"
  on_arm { sha256 "d7be3ee7dba73c6e87a0cb643cc72e66850bb543e05fd3d26c06ccc217bed107"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1425/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0ce424df0583c92adc42fcbc3572426fe3a04ab436c7d4d9450aa22a0ae625f5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1425/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
