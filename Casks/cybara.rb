cask "cybara" do
  version "1.0.1374"
  on_arm { sha256 "96285025d954150e5e506de0f317e636ee1a428e80b86238ccab8322429bb185"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1374/Cybara_#{version}_aarch64.dmg" }
  on_intel { sha256 "21dc2117a1425bb363feaf1adc4cd78fc6cbd10f259cddc39e2bfb5cae74adce"; url "https://github.com/metaspartan/cybara/releases/download/v1.0.1374/Cybara_#{version}_x64.dmg" }
  name "Cybara"
  desc "Self-hosted, open-source AI agent platform"
  homepage "https://cybara.ai"
  app "Cybara.app"
end
