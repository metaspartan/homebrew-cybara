cask "cybara" do
  version "1.0.2197"
  on_arm { sha256 "8538c822205a02d7021d3349ed70896cc72f10dcb59aa4b3072508b56cb2275b"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2197/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "d17fa68704518e63506b4310dc5f92768e8afc46a9e880d661ec1a805041e0dc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2197/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
