cask "cybara" do
  version "1.0.2240"
  on_arm { sha256 "867a589e2d2ed16570b968881577c7fda3a01e4d29c23be224f4c6949c292568"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2240/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "2e90f41526e560bd2a5c0a05632564c23fc76363c99f28c56a930682bcae2074"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.2240/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
