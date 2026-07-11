cask "cybara" do
  version "1.0.1218"
  on_arm { sha256 "263ed456254c5cc5e2c84b2f36b41b1d391dfc6d8e5b6727325c866210730a03"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1218/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "0a56412b65ce401ccf72426e8cfec7b7f6631efedce126447327218a337dc8d2"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1218/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
