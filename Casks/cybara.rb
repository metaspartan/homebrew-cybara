cask "cybara" do
  version "1.0.2031"
  on_arm { sha256 "a35f577fbc87a5b3bf2b191390f90ed340c553486bf1e97629f4b90511962307"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2031/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2b5f9f39276026a567c2d5159ac8874593675e30fe3e46a7ef9a2fb179cfd507"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2031/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
