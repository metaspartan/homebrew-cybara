cask "cybara" do
  version "1.0.1509"
  on_arm { sha256 "e5b3cb07950c9ed52775c95f15906eed20bd1185a34d6d18ff5a5589c821f9cc"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1509/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "ffe18370aeb168da2d1300ef02756ecff8b12bfba2325869bad9c98c8924464c"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1509/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
