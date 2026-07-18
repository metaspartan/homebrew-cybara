cask "cybara" do
  version "1.0.1791"
  on_arm { sha256 "c3a1608790788e5b191906f43f2d73340915945584e672f68337c4cc74f42dc9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1791/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "100229828c3bc48cd08ee7582753840a9fc0ab054d354b4ce6272920f3f5290c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1791/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
