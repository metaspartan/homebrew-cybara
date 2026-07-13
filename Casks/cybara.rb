cask "cybara" do
  version "1.0.1466"
  on_arm { sha256 "1ee54bc412f351b6318aef9188b9c84bbcfebad93b8231c0d2c2219fc5f8dc39"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1466/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "365f8d5ff294079a9685b2275ceab1e98f782e9d4a16e02d73d4545cd220f98b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1466/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
