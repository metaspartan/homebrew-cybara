cask "cybara" do
  version "1.0.2175"
  on_arm { sha256 "ab9f3e449e33ffee007e94b6b66b8790ef7295c3e465740ec9ba27f6ea7459ec"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2175/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "c83d69d33d0273b26f7e7de48a6f2101a7d5948cd6bf2a56900545f391feb794"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2175/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
