cask "cybara" do
  version "1.0.2577"
  on_arm { sha256 "35b6fc136924c7c79051ac7a43aade66a1e84c444ef612af3db1c8045805b3d9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2577/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "652fc584c9999f29a11dda2bc0bbf145c6406bf562d4c7486798c5bf7996347b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2577/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
