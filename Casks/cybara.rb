cask "cybara" do
  version "1.0.2213"
  on_arm { sha256 "032ad17f76396d59682caa61be6e887df3f0bdeb4096ee150f3a776e9a70753e"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2213/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "acb166e8328271839acddd05dccb5d468aa43381c2aa5dc43f1ffed2effcdc1b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2213/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
