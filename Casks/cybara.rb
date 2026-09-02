cask "cybara" do
  version "1.0.2258"
  on_arm { sha256 "c229ae8eb36bef9557bcd625a96730e8f586b1bbf19bf41c3b5dc954688e82ce"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2258/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "38aaf2682145a561a65249a0b6c458d47966a70b088fe3aa71d605d602b6cb2d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2258/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
