cask "cybara" do
  version "1.0.1491"
  on_arm { sha256 "06c2059e75fed2f295c87e5f2c090339ecd2bfc7a0e3cb70db4026b016612de9"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1491/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "4bc4b7a67308a43b1475c052383a15c6ddf0a8f968f9e50db0e65ff1ad0eeec3"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1491/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
