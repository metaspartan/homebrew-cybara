cask "cybara" do
  version "1.0.1476"
  on_arm { sha256 "3c12a8e8155582dbed87710415894a61e1d478c2b107936ba95de46895adfbc6"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1476/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "25710340f7d3f321dfb927245bf8deca8151fb1c975eebba0bda31ddb75f2b05"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1476/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
