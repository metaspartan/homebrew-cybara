cask "cybara" do
  version "1.0.1216"
  on_arm { sha256 "6098c5730b21f287a1b307c5dcacac8c0453f94fa85fd81b84999725ecfb5371"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1216/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "1200666b1a941173a1082259d17697a617784244f400fd7559fd2a86f2402f0c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1216/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
