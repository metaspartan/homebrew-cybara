cask "cybara" do
  version "1.0.1339"
  on_arm { sha256 "f5019d6fdca8423dce4a37befb4f032fdd0b42328047413dc17f3e487768ba8d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1339/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6db02863fd1564bcb8d256cbfaa44b570618b48ead1400f124743fb7715d56ea"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1339/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
