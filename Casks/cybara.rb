cask "cybara" do
  version "1.0.2104"
  on_arm { sha256 "ede524cbccef0c5d0eac1c97855d24d2c8894d5fef8298affe200ab5b82db729"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2104/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "f924dd430eba6ea10d8c608908ff33af8efed5d1f631dcd1bd480c241ef37e3f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2104/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
