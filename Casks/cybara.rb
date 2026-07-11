cask "cybara" do
  version "1.0.1341"
  on_arm { sha256 "7b6a80c2de5f0cb517556aa5862d4902c012247e802568a2fb93b896e780fab1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1341/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "68979b678d830562bd0898507de4a7c0d8acbe99947decdef5e028e3463ca2f1"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1341/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
