cask "cybara" do
  version "1.0.1410"
  on_arm { sha256 "4c771f69782c0347f467a2e9128a2a2eacefaff7b0a9bde325b6978dda7f6034"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1410/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "915dd20a07d1c41793d51658f35744aa7f4b54cd73754434e1dbdbee407b0703"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1410/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
