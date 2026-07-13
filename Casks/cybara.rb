cask "cybara" do
  version "1.0.1434"
  on_arm { sha256 "19ae1feb8396326f57a03d9f09b6640cb4c533920dd499622a9ef606a9610fec"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1434/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "157ae2993de2965f67364134e7eb3037d8045fe9a07b243c7b1352c6fc3ab6dc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1434/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
