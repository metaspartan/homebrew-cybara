cask "cybara" do
  version "1.0.1664"
  on_arm { sha256 "4e41b410b53acad59cd3b6a0211210f3f101ac1d4011a42f15b42f7c00ea47ec"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1664/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "49f1f69bf4419f35942c2f37ec3e6ee453e5f0b3185e069b7ac478aaad63061f"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1664/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
