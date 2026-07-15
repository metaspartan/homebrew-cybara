cask "cybara" do
  version "1.0.1634"
  on_arm { sha256 "f458d49dc184c856980a53e3915ae9e12e96b7f2dbd147b381f7c87a2665643c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1634/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ac191cca9062a64d2b6d4da8b58695e14ed2d5c396b4dfc7531b4f01ae0223e5"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1634/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
