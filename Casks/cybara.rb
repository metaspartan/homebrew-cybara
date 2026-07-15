cask "cybara" do
  version "1.0.1608"
  on_arm { sha256 "3ed979f7749607c5acfd673ba4d124c0568932ad523515bc891f5f4f4c512d32"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1608/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "5fd5371cee17efb62f7616a3470c3ae2893fd6a09e592ed5db90726d3d8cfc06"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1608/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
