cask "cybara" do
  version "1.0.1549"
  on_arm { sha256 "bc9abe22f10f08846a4cb3567a005f19fef9dec58cdcdf63be7a68956cf804be"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1549/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "6ee4d6662ebf87f1aac13a51e48ba1cec613ede99922fc4602d95288e6daef1d"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1549/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
