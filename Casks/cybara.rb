cask "cybara" do
  version "1.0.1979"
  on_arm { sha256 "aa777518ae372d527d2942143d06d2dfb4453f4d55fc120bab3e1ab8ffe2a5ef"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1979/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ffbcbbcbe8ae7a336f65e38c8647754ac2b1b9810c0d9f8aa45bd468cf05eb2c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1979/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
