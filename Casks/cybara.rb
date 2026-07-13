cask "cybara" do
  version "1.0.1449"
  on_arm { sha256 "8ba82c9023ad6154a1af013b04151aef0c91e8c6fe77f69745445b5ce2c77ab7"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1449/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "9e5dc403f0d22833cf788bdc03913a33d5a7148367292ea4ecfb4798fb05f339"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1449/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
